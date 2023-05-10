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
    
    // MARK: - Public properties
    var user: User!

    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Welcome, \(user.name)"
    }
}
