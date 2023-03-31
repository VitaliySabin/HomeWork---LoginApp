//
//  WelcomeViewController.swift
//  HomeWork - LoginApp
//
//  Created by Виталий Сабин on 31.03.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    
    @IBAction func logOutButtonPressed() {
    }
    
}
