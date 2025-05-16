package com.example.model

import com.google.cloud.Timestamp
import kotlinx.serialization.Contextual
import kotlinx.serialization.Serializable

/**
 * A single mood entry.
 *
 * @property mood The mood value (1-10).
 * @property timestamp The time at which the entry is created.
 */
@Serializable
data class MoodEntry(
    val mood: Int = 0,
    @Contextual val timestamp: Timestamp? = null
)