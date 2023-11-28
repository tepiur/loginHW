//
//  ViewController.swift
//  loginHW
//
//  Created by Stefan Iurin on 24.11.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let login = "Din"
    private let password = "1"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.user = login
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func loginButtonAction() {
        guard userNameTF.text == login, passwordTF.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login or password"
            )
            return
        }
    }
    
    @IBAction func forgotNameButtonAction() {
        showAlert(withTitle: "Ooops!", andMessage: "Your User Name is \(login)")
    }
    
    @IBAction func forgotPasswordButtonAction() {
        showAlert(withTitle: "Ooops!", andMessage: "Your password is \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
        // я сломал голову и не понимаю, почему не получается связать с кнопкой Exit
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
    }
}


