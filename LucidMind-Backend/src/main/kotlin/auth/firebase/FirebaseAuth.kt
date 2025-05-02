package com.example.auth.firebase

import com.google.firebase.auth.FirebaseAuth
import io.ktor.server.application.*
import io.ktor.server.auth.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.http.*
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.security.Principal

private val firebaseAuthLogger: Logger = LoggerFactory.getLogger("com.example.auth.firebase")

class FirebaseAuthenticationProvider internal constructor(
    config: Configuration
) : AuthenticationProvider(config) {

    private val tokenExtractor: (ApplicationCall) -> String? = config.token
    private val principalProvider: ((uid: String) -> Principal?)? = config.principal

    class Configuration(name: String?) : AuthenticationProvider.Config(name) {
        internal var token: (ApplicationCall) -> String? = { call -> call.request.parseAuthorizationToken() }
        internal var principal: ((uid: String) -> Principal?)? = null

        fun build() = FirebaseAuthenticationProvider(this)
    }

    override suspend fun onAuthenticate(context: AuthenticationContext) {
        val call = context.call
        try {
            val token = tokenExtractor(call) ?: throw Exception("No token provided")
            val uid = FirebaseAuth.getInstance().verifyIdToken(token).uid
            val principal = principalProvider?.invoke(uid)

            if (principal != null) {
                context.principal(principal)
            } else {
                context.challenge("FirebaseAuth", AuthenticationFailedCause.InvalidCredentials) { challenge, call ->
                    call.respond(HttpStatusCode.Unauthorized, "Invalid credentials.")
                    challenge.complete()
                }
            }
        } catch (cause: Throwable) {
            val message = "Authentication failed: ${cause.message ?: cause::class.simpleName}"
            firebaseAuthLogger.warn(message)
            context.challenge("FirebaseAuth", AuthenticationFailedCause.Error(cause.message ?: "Authentication failed")) { challenge, call ->
                call.respond(HttpStatusCode.Unauthorized, message)
                challenge.complete()
            }

        }
    }
}

fun AuthenticationConfig.firebase(
    name: String? = null,
    configure: FirebaseAuthenticationProvider.Configuration.() -> Unit
) {
    val provider = FirebaseAuthenticationProvider.Configuration(name).apply(configure).build()
    register(provider)
}

fun ApplicationRequest.parseAuthorizationToken(): String? =
    authorization()?.substringAfter("Bearer ")
