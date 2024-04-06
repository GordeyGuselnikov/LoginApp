//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Guselnikov Gordey on 5/11/23.
//

import UIKit

final class WelcomeViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var welcomeLabel: UILabel!
    
    // MARK: - Public Properties
    var user: User!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        welcomeLabel.text = """
            Welcome, \(user.login)!!!
            My name is \(user.person.fullName).
            """
        
        print("User ID: ", user.id)
    }
}
