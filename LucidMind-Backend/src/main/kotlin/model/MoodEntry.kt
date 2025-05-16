package com.example.model

import com.google.cloud.Timestamp
import kotlinx.serialization.Contextual
import kotlinx.serialization.Serializable

@Serializable
data class MoodEntry(
    val mood: Int,
    @Contextual val timestamp: Timestamp
)