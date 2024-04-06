//
//  ViewController.swift
//  LoginApp
//
//  Created by Guselnikov Gordey on 5/10/23.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    // MARK: - Private Properties
    private let user = User.getUser()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        
        userNameTF.text = user.login
        passwordTF.text = user.password
        
        print("User ID: ", user.id)
    }
    
    // скрытие клавиатуры при тапе по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - Navigation
    // метод вызывается перед prepare, перед выполнением перехода, и если он возвращает false, переход не состоится
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
//            showAlert(
//                title: "Invalid login or password",
//                message: "Please, enter correct login and password",
//                textField: passwordTF
//            )
            
            // Введенное имя не валидно, отменяем переход и показываем алерт контроллер
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password") {
                    self.passwordTF.text = "" // completion
                }
            return false
        }
        // Введенное имя валидно, разрешаем переход
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let tabBarController = segue.destination as? UITabBarController else { return }
//        guard let welcomeVC = tabBarController.viewControllers?.first as? WelcomeViewController else { return }
//        welcomeVC.user = user
//
//        guard let navigationVC = tabBarController.viewControllers?.last as? UINavigationController else { return }
//        navigationVC.title = user.person.fullName
//
//        guard let aboutMeVC = navigationVC.topViewController as? AboutMeViewController else { return }
//        aboutMeVC.user = user
        guard let tabBarController = segue.destination as? TabBarController else {
            return
        }
        tabBarController.user = user
    }
    
    // MARK: - IBActions
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Oops!", message: "Your name is \(user.login) 😉")
            : showAlert(title: "Oops!", message: "Your password is \(user.password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: - Alert Controller
extension LoginViewController {
   
//    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
//        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
//            textField?.text = ""
//        }
//        alert.addAction(okAction)
//        present(alert, animated: true)
//    }
    
    // completion: () -> Void - будем раскрывать completion, когда нужно что-то сделать
    // () -> Void - делаем его опциональным, тк он иногда нужен, а иногда нет
    private func showAlert(title: String, message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
