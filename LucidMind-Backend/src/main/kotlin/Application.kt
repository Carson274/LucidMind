package com.example

import com.example.config.firebase.FirebaseAdmin
import io.ktor.server.application.*
import io.ktor.server.plugins.contentnegotiation.*
import io.ktor.server.auth.*
import com.example.auth.firebase.firebase
import com.example.config.firebase.AuthConfig.configure
import io.ktor.serialization.gson.*
import io.ktor.server.request.*
import io.ktor.server.plugins.calllogging.*
import org.slf4j.event.Level


fun main(args: Array<String>): Unit = io.ktor.server.netty.EngineMain.main(args)

@Suppress("unused")
fun Application.module() {
    // initialize Firebase Admin SDK
    FirebaseAdmin.init()
    install(ContentNegotiation) { gson { setPrettyPrinting() } }
    install(Authentication) { firebase { configure() } }
    install(CallLogging) {
        level = Level.INFO
        filter { call -> call.request.path().startsWith("/") }
    }
    configureRouting()
}