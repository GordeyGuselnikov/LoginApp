//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Guselnikov Gordey on 5/13/23.
//

import UIKit

final class AboutMeViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var avatarImageView: UIImageView! {
        didSet {
            avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var educationLabel: UILabel!
    
    // MARK: - Public Properties
    var user: User!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer()
        title = user.person.fullName
        
        avatarImageView.image = UIImage(named: user.person.photo)
        nameLabel.text = "Name: " + user.person.name
        surnameLabel.text = "Surname: " + user.person.surname
        positionLabel.text = "Position: " + user.person.position
        educationLabel.text = "Education: " + user.person.education.title
    }
    
    override func viewWillLayoutSubviews() {
//        avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else { return }
        detailVC.user = user
    }
}
