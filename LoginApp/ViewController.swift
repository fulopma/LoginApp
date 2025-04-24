//
//  ViewController.swift
//  LoginApp
//
//  Created by Marcell Fulop on 4/23/25.

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    let employees = [
        [
            "first name": "Michael",
            "last name": "Scott",
            "title": "Regional Manager",
            "email": "michael.scott@dundermifflin.com",
            "salary": "100000",
        ],
        [
            "first name": "Dwight",
            "last name": "Schrute",
            "title": "Assisstant to the Regional Manager",
            "email": "dwight.schrute@dundermifflin.com",
            "salary": "50000",
        ],
        [
            "first name": "Jim",
            "last name": "Halpert",
            "title": "Sales Representative",
            "email": "jim.halpert@dundermifflin.com",
            "salary": "60000",
        ],
        [
            "first name": "Pam",
            "last name": "Beesly",
            "title": "Receptionist",
            "email": "pam.beesly@dundermifflin.com",
            "salary": "40000",
        ],
        [
            "first name": "Ryan",
            "last name": "Howard",
            "title": "Office Temp",
            "email": "ryan.howard@dundermifflin.com",
            "salary": "30000",
        ],
        [
            "first name": "Andy",
            "last name": "Bernard",
            "title": "Sales Representative",
            "email": "andy.bernard@dundermifflin.com",
            "salary": "60000",
        ],
        [
            "first name": "Stanley",
            "last name": "Hudson",
            "title": "Sales Representative",
            "email": "stanley.hudson@dundermifflin.com",
            "salary": "60000",
        ],
        [
            "first name": "Kevin",
            "last name": "Malone",
            "title": "Accountant",
            "email": "kevin.malone@dundermifflin.com",
            "salary": "50000",
        ],
        [
            "first name": "Creed",
            "last name": "Bratton",
            "title": "Quality Assurance",
            "email": "creed.bratton@dundermifflin.com",
            "salary": "45000",
        ],
        [
            "first name": "Angela",
            "last name": "Martin",
            "title": "Head Accountant",
            "email": "angelina.martin@dundermifflin.com",
            "salary": "75000",
        ],

    ]
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count
    }
    // copy employee dictionary
    // display name
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "someCell", for: indexPath)
        cell.textLabel?.text = employees[indexPath.row]["first name"] ?? ""
        return cell
    }
    /// From employee dictionary
    /// Display this data in this view (only one field maybe first name)
    


}

