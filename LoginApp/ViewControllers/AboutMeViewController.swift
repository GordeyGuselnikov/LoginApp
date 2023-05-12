//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Guselnikov Gordey on 5/13/23.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet weak var avatarImageView: UIImageView!
    
    var user: User!
    
    var primaryColor: UIColor!
    var secondaryColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        title = user.person.fullName
    }
    
    override func viewWillLayoutSubviews() {
        
        avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2
    }
}
