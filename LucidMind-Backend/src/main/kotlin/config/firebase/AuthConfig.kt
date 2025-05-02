package com.example.config.firebase

import com.example.auth.firebase.FirebaseAuthenticationProvider
import com.example.model.User
import kotlinx.coroutines.runBlocking

/**
 * Configuration for [FirebaseAuthenticationProvider].
 */
object AuthConfig {
    fun FirebaseAuthenticationProvider.Configuration.configure() {
        principal = { uid ->
            // This is where to make a db call to fetch a User's profile data
            runBlocking { User(uid, "myUsername") }
        }
    }
}