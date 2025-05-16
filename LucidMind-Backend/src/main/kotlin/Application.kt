package com.example

import com.example.config.firebase.FirebaseAdmin
import io.ktor.server.application.*
import io.ktor.server.plugins.contentnegotiation.*
import io.ktor.server.auth.*
import com.example.auth.firebase.firebase
import com.example.config.firebase.AuthConfig.configure
import io.ktor.serialization.gson.*
import io.ktor.serialization.kotlinx.json.*
import io.ktor.server.request.*
import io.ktor.server.plugins.calllogging.*
import io.ktor.server.plugins.cors.routing.*
import org.slf4j.event.Level
import kotlinx.serialization.json.Json

fun main(args: Array<String>): Unit = io.ktor.server.netty.EngineMain.main(args)

@Suppress("unused")
fun Application.module() {
    // Initialize Firebase Admin SDK
    FirebaseAdmin.init()

    // Configure CORS
    install(CORS) {
        allowHost("localhost:8080")
        allowHost("127.0.0.1:8080")
        allowMethod(io.ktor.http.HttpMethod.Options)
        allowMethod(io.ktor.http.HttpMethod.Get)
        allowMethod(io.ktor.http.HttpMethod.Post)
        allowMethod(io.ktor.http.HttpMethod.Put)
        allowMethod(io.ktor.http.HttpMethod.Delete)
        allowMethod(io.ktor.http.HttpMethod.Patch)
        allowHeader(io.ktor.http.HttpHeaders.Authorization)
        allowHeader(io.ktor.http.HttpHeaders.ContentType)
        allowHeader(io.ktor.http.HttpHeaders.Accept)
        allowCredentials = true
        maxAgeInSeconds = 3600
    }
    
    // Setup Content Negotiation with both Gson and KotlinX JSON
    install(ContentNegotiation) {
        // Use Gson for backward compatibility
        gson {
            setPrettyPrinting()
        }
        // Add KotlinX JSON serialization
        json(Json {
            prettyPrint = true
            isLenient = true
            ignoreUnknownKeys = true
        })
    }
    
    // Firebase Authentication
    install(Authentication) {
        firebase {
            configure()
        }
    }
    
    // Request logging
    install(CallLogging) {
        level = Level.INFO
        filter { call -> call.request.path().startsWith("/") }
    }
    
    // Setup routing
    configureRouting()
}