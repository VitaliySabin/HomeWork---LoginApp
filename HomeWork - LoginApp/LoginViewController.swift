//
//  ViewController.swift
//  HomeWork - LoginApp
//
//  Created by Виталий Сабин on 31.03.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    let login = "User"
    let password = "1111"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = loginTextField.text
    }
    
    @IBAction func remindLoginButton() {
        showAlert(with: "Ooops!", and: "Your login is \(login)")
    }
    
    @IBAction func remindPasswordButton() {
        showAlert(with: "Ooops!", and: "Your password is \(password)")
    }
    
    @IBAction func logInButtonPressed() {
    }
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

