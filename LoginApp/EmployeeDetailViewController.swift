//
//  EmployeeDetailViewController.swift
//  LoginApp
//
//  Created by Marcell Fulop on 4/29/25.
//

import UIKit

class EmployeeDetailViewController: UIViewController {
    var firstName: String?
    var lastName: String?
    var employeeTitle: String?
    var email: String?
    var salary: String?
    
    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var salaryLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        firstNameLabel.text = firstName
        lastNameLabel.text = lastName
        titleLabel.text = employeeTitle
        emailLabel.text = email
        salaryLabel.text = "$\((Int(salary ?? "0") ?? 0).formatted())"
    }
    

}
