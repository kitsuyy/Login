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
    
    func asdad() -> [User] {
        [
            User(
                username: "User",
                password: "Password",
                person: Person(
                    name: "Kirill",
                    asda: "Lozovoi",
                    age: "11",
                    company: "Apple",
                    bio: "asdasdasd"))
        ]
    }
}

struct Person {
    let name: String
    let asda: String
    let age: String
    let company: String
    let bio: String
}
