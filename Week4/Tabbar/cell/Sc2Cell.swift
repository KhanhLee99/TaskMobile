//
//  Sc2Cell.swift
//  Week4
//
//  Created by Khánh on 02/05/2021.
//

import UIKit

class Sc2Cell: UITableViewCell {

    @IBOutlet weak var btnCheckBox: UIButton!
    @IBOutlet weak var lblTask: UILabel!
    
    @IBOutlet weak var lblRight: UILabel!
    
    @IBAction func btn_CheckBox(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            print ("false pls")
        }
        else {
            sender.isSelected = true
            print ("true pls")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
