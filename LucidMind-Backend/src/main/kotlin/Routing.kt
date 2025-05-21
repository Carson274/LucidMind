package com.example

import com.example.model.*
import com.example.service.FirestoreService
import io.ktor.server.application.*
import io.ktor.server.http.content.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.request.*

fun Application.configureRouting() {
    val firestoreService = FirestoreService()
    
    routing {
        // Root route - ping for health check
        get("/") {
            call.respondText("LucidMind is running!", ContentType.Text.Plain)
        }
        staticResources("static", "static")

        // Mood routes
        route("/moods") {
            // GET all moods
            get {
                try {
                    val moods = firestoreService.getAllMoods()
                    call.respond(
                        HttpStatusCode.OK,
                        MoodListResponse(
                            success = true,
                            message = "Moods retrieved successfully",
                            data = moods
                        )
                    )
                } catch (e: Exception) {
                    call.respond(
                        HttpStatusCode.InternalServerError,
                        MoodListResponse(
                            success = false,
                            message = "Failed to retrieve moods: ${e.message}",
                            data = emptyList()
                        )
                    )
                }
            }

            // POST a single mood
            post {
                try {
                    val moodEntry = call.receive<MoodEntry>()
                    val docId = firestoreService.addMood(moodEntry.userId, moodEntry.mood, moodEntry.description)
                    call.respond(
                        HttpStatusCode.Created,
                        MoodResponse(
                            id = docId,
                            success = true,
                            message = "Mood added successfully"
                        )
                    )
                } catch (e: Exception) {
                    call.respond(
                        HttpStatusCode.InternalServerError,
                        MoodResponse(
                            id = "",
                            success = false,
                            message = "Failed to add mood: ${e.message}"
                        )
                    )
                }
            }
        }

        // Authentication routes - to be implemented
        authenticate {
            get("/authenticated") {
                call.respond(HttpStatusCode.OK, "My name is ${call.principal<User>()?.username}, and I'm authenticated!")
            }
        }
    }
}