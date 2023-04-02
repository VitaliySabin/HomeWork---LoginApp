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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.userName = loginTextField.text
    }
    
    @IBAction func remindLoginButton() {
        showAlert(with: "Ooops!", and: "Your login is \(login)")
    }
    
    @IBAction func remindPasswordButton() {
        showAlert(with: "Ooops!", and: "Your password is \(password)")
    }
    
    @IBAction func logInButtonPressed() {
        guard let loginTF = loginTextField.text else { return }
        guard let passwordTF = passwordTextField.text else { return }
        
        if loginTF == login && passwordTF == password {
            performSegue(withIdentifier: "goToWelcomeVC", sender: nil)
        } else {
            showAlert(with: "Invalid login or password", and: "Please try again")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.identifier == "returnToLoginVC" else { return }
        
        loginTextField.text = nil
        passwordTextField.text = nil
    }
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default) { UIAlertAction in
            self.passwordTextField.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInButtonPressed()
        }
        return true
    }
}
