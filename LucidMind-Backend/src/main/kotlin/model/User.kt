package com.example.model

import java.security.Principal

data class User(
    val _id: String,
    val username: String
) : Principal {
    override fun getName(): String = username
}