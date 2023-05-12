//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Guselnikov Gordey on 5/13/23.
//

import UIKit

class AboutMeViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var educationLabel: UILabel!
    
    // MARK: - Public Properties
    var user: User!
    
    var primaryColor: UIColor!
    var secondaryColor: UIColor!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        title = user.person.fullName
        
        nameLabel.text = "Name: " + user.person.name
        surnameLabel.text = "Surname: " + user.person.surname
        positionLabel.text = "Position: " + user.person.position
        educationLabel.text = "Education: " + user.person.education
    }
    
    override func viewWillLayoutSubviews() {
        avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else { return }
        detailVC.user = user
        detailVC.primaryColor = primaryColor
        detailVC.secondaryColor = secondaryColor
    }
}