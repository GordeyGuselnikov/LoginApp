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
    
    var primaryColor: UIColor!
    var secondaryColor: UIColor!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Details"
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        detailsTextView.text = user.person.details
    }
}
