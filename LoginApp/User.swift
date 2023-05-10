//
//  User.swift
//  LoginApp
//
//  Created by Guselnikov Gordey on 5/11/23.
//

import Foundation

struct User {
    let name: String
    let password: String
    
    static func getUserData() -> User {
        User(name: "User", password: "Password")
    }
}
