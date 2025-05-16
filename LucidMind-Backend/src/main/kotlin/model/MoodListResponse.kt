package com.example.model

import kotlinx.serialization.Serializable

@Serializable
data class MoodListResponse(
    val success: Boolean,
    val message: String,
    val data: List<MoodEntry>
)