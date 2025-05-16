package com.example.service

import com.example.model.*
import com.google.cloud.firestore.Firestore
import com.google.firebase.cloud.FirestoreClient
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.util.concurrent.ExecutionException
import java.util.HashMap

class FirestoreService {
    private val db: Firestore = FirestoreClient.getFirestore()

    suspend fun addMood(mood: Int): String {
        val collectionName = "moods"

        return withContext(Dispatchers.IO) {
            try {
                // Create the document data as a Map<String, Any>
                val entry = MoodEntry(
                    mood = mood,
                    timestamp = com.google.cloud.Timestamp.now()
                )
                
                // Create a document with auto-generated ID
                val docRef = db.collection(collectionName).add(entry).get()
                
                // Return the document ID
                docRef.id
            } catch (e: ExecutionException) {
                throw RuntimeException("Error adding mood to Firestore", e)
            } catch (e: InterruptedException) {
                throw RuntimeException("Operation interrupted", e)
            }
        }
    }
}