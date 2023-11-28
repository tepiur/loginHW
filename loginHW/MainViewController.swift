//
//  ViewController.swift
//  loginHW
//
//  Created by Stefan Iurin on 24.11.2023.
//

import UIKit

final class MainViewController: UIViewController {
 
    // MARK: - @IBOutlet
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
  
    // MARK: - private properties
    
    private let userName = "User"
    private let password = "1"
  
    // MARK: - override func
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.user = userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - @IBAction
    
    @IBAction func loginButtonAction() {
        guard userNameTF.text == userName, passwordTF.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login or password"
            )
            return
        }
    }
    
    @IBAction func forgotNameButtonAction() {
        showAlert(withTitle: "Ooops!", andMessage: "Your User Name is \(userName)")
    }
    
    @IBAction func forgotPasswordButtonAction() {
        showAlert(withTitle: "Ooops!", andMessage: "Your password is \(password)")
    }
    
    @IBAction func unwind(for  segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: - private func
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
    }
}


