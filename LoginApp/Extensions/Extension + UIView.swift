//
//  Extension + UIView.swift
//  LoginApp
//
//  Created by Guselnikov Gordey on 5/12/23.
//

import UIKit

// MARK: - Set background color
extension UIView {
    
    func addVerticalGradientLayer() {
        let primaryColor = UIColor(
            red: 210/255,
            green: 109/255,
            blue: 128/255,
            alpha: 1
        )
        guard let secondaryColor = UIColor(named: "secondaryColor") else { return }
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
