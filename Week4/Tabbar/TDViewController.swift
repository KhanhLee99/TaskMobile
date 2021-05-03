//
//  TDViewController.swift
//  Week4
//
//  Created by Khánh on 03/05/2021.
//

import UIKit

class TDViewController: UIViewController {

    
    @IBOutlet weak var ContentView: UIView!
    @IBOutlet weak var viewWrap0: UIView!
    @IBOutlet weak var viewTitle: UIView!
    @IBOutlet weak var viewFile: UIView!
    @IBOutlet weak var viewCB1: UIView!
    @IBOutlet weak var viewCB2: UIView!
    @IBOutlet weak var viewCB3: UIView!
    @IBOutlet weak var strategist: UILabel!
    @IBOutlet weak var uiux: UILabel!
    @IBOutlet weak var btnAdd: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.navigationItem.title = "Task Detail"
    }
    
    func setupUI(){
        viewWrap0.layer.cornerRadius = 5.0
        
//        viewTitle.addBorder(toSide: .Bottom, withColor: UIColor.systemGray5.cgColor, andThickness: 1.0)
        
//        ContentView.layer.cornerRadius = 10.0
        
        viewFile.layer.borderWidth = 1
        viewFile.layer.borderColor = UIColor.systemGray5.cgColor
        viewFile.layer.cornerRadius = 6.0
        
        viewCB1.layer.cornerRadius = 6.0
        viewCB2.layer.cornerRadius = 6.0
        viewCB3.layer.cornerRadius = 6.0
        
        strategist.layer.cornerRadius = 6.0
        strategist.layer.masksToBounds = true
        
        uiux.layer.cornerRadius = 6.0
        uiux.layer.masksToBounds = true
        
        btnAdd.layer.cornerRadius = 6.0
        
    }
    

   

}
