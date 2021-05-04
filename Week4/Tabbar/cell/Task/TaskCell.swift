//
//  TaskCell.swift
//  Week4
//
//  Created by Khánh on 02/05/2021.
//

import UIKit

class TaskCell: UITableViewCell {

    @IBOutlet weak var lblRight: UILabel!
    @IBOutlet weak var lblLeft: UILabel!
    
    @IBOutlet weak var viewWrap: UIView!
    @IBOutlet weak var btnCheckBox: UIButton!
    @IBAction func btn_checkBox(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            viewWrap.layer.borderWidth = 0.0
            viewWrap.backgroundColor = .systemGray6
            lblLeft.textColor = .black
        }
        else {
            sender.isSelected = true
            viewWrap.layer.borderWidth = 1.0
            viewWrap.layer.borderColor = UIColor.purple.cgColor
            viewWrap.backgroundColor = .white
            lblLeft.textColor = .purple
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        viewWrap.layer.cornerRadius = 7.0
        lblRight.layer.cornerRadius = 10.0
        lblRight.layer.masksToBounds = true
                
        
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//    }
    
}
