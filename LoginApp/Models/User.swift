//
//  User.swift
//  LoginApp
//
//  Created by Guselnikov Gordey on 5/11/23.
//

struct User {
    let name: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(name: "User", password: "Password", person: Person(firstName: "Gordey", lastName: "Guselnikov", position: "iOS Engineer", education: "https://swiftbook.ru"))
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let position: String
    let education: String
    
    var fullName: String {
        lastName + " " + firstName
    }
}
