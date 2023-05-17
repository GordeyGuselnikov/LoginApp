//
//  DetailViewController.swift
//  LoginApp
//
//  Created by Guselnikov Gordey on 5/13/23.
//

import UIKit

final class DetailViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var detailsTextView: UITextView!
    
    // MARK: - Public Properties
    var user: User!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Details"
        view.addVerticalGradientLayer()
        detailsTextView.backgroundColor = .clear
        detailsTextView.text = user.person.details
    }
}
