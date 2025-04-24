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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
