//
//  WelcomeViewController.swift
//  HomeWork - LoginApp
//
//  Created by Виталий Сабин on 31.03.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeTextField: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeTextField.text = "Welcome, " + userName + "!"
    }
    
    @IBAction func logOutButtonPressed() {
        performSegue(withIdentifier: "returnToLoginVC", sender: nil)
    }
}
