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
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Gordey",
            surname: "Guselnikov",
            photo: "photoGordey",
            position: "iOS Developer",
            details: """
                        About

                        Skills:
                        OS/Platforms: Windows, MacOS, Unix, iOS
                        Languages: Java, Swift, HTML, fundamentals of SQL
                        Database: Fundamentals of Oracle, MS SQL Server, MySQL, PostgreSQL
                        Test Automation: Java, RestAssured, Selenium, Selenide, RestAssured, JUnit, Allure, Jenkins, Maven
                        Test Management: Jira, TestRail, Qase.io
                        Tools: IntelliJ IDEA, Xcode, Git, Postman, Swagger, Confluence
                         
                        In my spare time I study developing apps for iOS. (Xcode, Swift).

                        Ready to discuss about relocate.
                        Languages: Russian(native), English(pre-intermediate)

                        https://github.com/GordeyGuselnikov

                        guselnikovgordey@gmail.com
                        https://t.me/gordey_guselnikov
                        guselnikov_gordey (Skype)
                        +79234078937 (Mobile)
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
