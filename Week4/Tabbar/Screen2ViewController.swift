//
//  Screen2ViewController.swift
//  Week4
//
//  Created by Khánh on 01/05/2021.
//

import UIKit

class Screen2ViewController: UIViewController {
    
    @IBOutlet weak var viewWrap0: UIView!
    @IBOutlet weak var viewWrap1: UIView!
    @IBOutlet weak var viewWrapDate1: UIView!
    
    @IBOutlet weak var branding1: UIView!
    @IBOutlet weak var branding2: UIView!
    @IBOutlet weak var branding3: UIView!
    @IBOutlet weak var branding4: UIView!
    
    @IBOutlet weak var viewWrapDate2: UIView!
    
    
    @IBOutlet weak var viewDescription: UIView!
    
    @IBOutlet weak var btnCreate: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
   
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.navigationItem.title = "Create Task"
    }
    

    func setupUI(){
        viewWrap0.layer.cornerRadius = 5.0
        
        viewWrap1.addBorder(toSide: .Bottom, withColor: UIColor.systemGray5.cgColor, andThickness: 1.0)
        
        viewWrapDate1.layer.cornerRadius = 6.0
        viewWrapDate1.layer.borderWidth = 1.0
        viewWrap1.layer.borderColor = UIColor.systemGray5.cgColor
        
        viewWrapDate2.layer.cornerRadius = 6.0
        viewWrapDate2.layer.borderWidth = 1.0
        viewWrapDate2.layer.borderColor = UIColor.systemGray5.cgColor
        
        branding1.layer.cornerRadius = 6.0
        branding2.layer.cornerRadius = 6.0
        branding3.layer.cornerRadius = 6.0
        branding4.layer.cornerRadius = 6.0
        
        branding4.layer.borderWidth = 1.0
        branding4.layer.borderColor = UIColor.purple.cgColor
        
        
        viewDescription.layer.cornerRadius = 5.0
        
        btnCreate.layer.cornerRadius = 5.0
        
        

//        self.tabBarController?.navigationItem.title = "jfdgjku"
//        let searchBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: nil)
//        self.tabBarController?.navigationItem.leftBarButtonItem = searchBarButtonItem
    }
    
    
    
}

