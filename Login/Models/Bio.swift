//
//  Bio.swift
//  Login
//
//  Created by Kirill Lozovoi on 10/5/22.
//

import Foundation

struct User {
    let username: String
    let password: String
    let person: Person
    
    static func userLog() -> User {
        User(
            username: "User",
            password: "Password",
            person: .userData()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: String
    let company: String
    let bio: String
    let group: String
    let photo: String
    
    static func userData() -> Person {
        Person(
            name: "Kirill",
            surname: "Lozovoi",
            age: "11",
            company: "Swiftbook",
            bio: "Something",
            group: "30",
            photo: "pepefrg-4"
        )
    }
}

