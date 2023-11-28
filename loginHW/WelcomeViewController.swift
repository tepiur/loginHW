//
//  WelcomeViewController.swift
//  loginHW
//
//  Created by Stefan Iurin on 24.11.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var userLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userLabel.text = ("Welcome, \(user)")
    }
    
    @IBAction func logOutButtonAction() {
        dismiss(animated: true)
    }
}
