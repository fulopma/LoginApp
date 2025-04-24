//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Marcell Fulop on 4/23/25.
//

// Navigation between controllers
// Tableview (very important in UIkit)
//     99% of applications use tableview; easy but steps need to remember
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Login Button Press
    @IBAction func loginButtonPress(_ sender: Any) {
        let username = usernameField.text ?? ""
        let password = passwordField.text ?? ""
        if username == "admin" && password == "password" {
            
//            let successAlert = UIAlertController(title: "😘 Login Successful", message: "Welcome \(username)!", preferredStyle: .alert)
//            successAlert.addAction(UIAlertAction(title: NSLocalizedString("Yass 🤩", comment: "This closes alert"), style: .default, handler: { _ in
//                NSLog("Logged in")
//            }))
//            
//            self.present(successAlert, animated: true, completion: nil)
            self.performSegue(withIdentifier: "navigateHomeScreen", sender: nil)
            
        }
        else{
            
            let failureAlert = UIAlertController(title: "😢 Login Failed", message: "Your credentials are incorrect. Try again.", preferredStyle: .alert)
            failureAlert.addAction(UIAlertAction(title: NSLocalizedString("What? Where's your manager? 😱", comment: "This closes alert"), style: .default, handler: { _ in
                    NSLog("Login failed")
                    }))
            
            self.present(failureAlert, animated: true, completion: nil)
                                                 
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
