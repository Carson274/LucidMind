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

    /**
     * Retrieves all mood entries from the Firestore database.
     *
     * @return A list of MoodEntry objects.
     */
    suspend fun getAllMoods(): List<MoodEntry> {
        val collectionName = "moods"

        return withContext(Dispatchers.IO) {
            try {
                // Fetch all documents from the collection
                val querySnapshot = db.collection(collectionName).get().get()
                
                // Map the documents to MoodEntry objects
                querySnapshot.documents.map { document ->
                    document.toObject(MoodEntry::class.java)!!
                }
            } catch (e: ExecutionException) {
                throw RuntimeException("Error retrieving moods from Firestore", e)
            } catch (e: InterruptedException) {
                throw RuntimeException("Operation interrupted", e)
            }
        }
    }

    /**
     * Adds a new mood entry to the Firestore database.
     *
     * @param mood The mood value to be added.
     * @return The document ID of the newly created mood entry.
     */
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