//
//  User.swift
//  LoginApp
//
//  Created by Guselnikov Gordey on 5/11/23.
//

import Foundation

struct User {
    let id = UUID()
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let position: String
    let details: String
    let education: Education
    
    var fullName: String {
        "\(surname) \(name)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Gordey",
            surname: "Guselnikov",
            photo: "photoGordey",
            position: "iOS Engineer",
            details: """
                        About
                        I'm a software quality assurance engineer. I have 3+ years in Software Testing and over 15 years in the IT industry. I enjoy working in IT/High Tech environment. The Software QA Career is so attractive because I employ my natural talent and passion for perfection.

                        Skills:
                        OS/Platforms: Windows, MacOS, Unix, iOS
                        Languages: Java, Swift, HTML, fundamentals of SQL, JavaScript
                        Database: Fundamentals of Oracle, MS SQL Server, MySQL, PostgreSQL
                        Test Automation: Java, RestAssured, Selenium, Selenide, RestAssured, JUnit, Allure, Jenkins
                        Test Management: Jira, TestRail
                        Tools: IntelliJ IDEA, Xcode, Git, Postman, Swagger, Confluence

                        In my free time, I study testing and developing applications for iOS. (Xcode, Swift).

                        Languages: Russian(native), English(pre-intermediate)

                        https://github.com/GordeyGuselnikov

                        guselnikovgordey@gmail.com || https://t.me/guselnikov_gordey || guselnikov_gordey (Skype) || +79234078937 (Mobile)
                    """,
            education: Education.getEducation()
        )
    }
}

struct Education {
    let title: String
    let course: Сourse
    
    static func getEducation() -> Education {
        Education(title: "https://swiftbook.ru", course: .middle)
    }
}

enum Сourse: String {
    case junior = "Junior iOS Developer"
    case middle = "Middle iOS Developer"
}
