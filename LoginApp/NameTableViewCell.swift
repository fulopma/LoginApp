//
//  NameTableViewCell.swift
//  LoginApp
//
//  Created by Marcell Fulop on 4/24/25.
//

import UIKit

class NameTableViewCell: UITableViewCell {
    @IBOutlet weak var EmployeeView: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    var delegate: EmployeeCellActions?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func shareButtonPress(_ sender: Any) {
        delegate?.shareEmployeeDetails(name: label1.text ?? "")
    }
    
    
    @IBAction func deleteButtonPress(_ sender: Any) {
        // need to string splice to separate first and last names
        let fullName = label1.text ?? ""
        let spaceIndex = fullName.firstIndex(of: " ")!
        let firstName = fullName[..<spaceIndex]
        let lastName = fullName[fullName.index(after: spaceIndex)...]
        delegate?.deleteEmployee(firstName: String(firstName), lastName: String(lastName))
    }
    
}
