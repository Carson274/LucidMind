package com.example.model

import kotlinx.serialization.Serializable

@Serializable
data class MoodResponse(
    val id: String,
    val success: Boolean,
    val message: String
)