//
//  Navigation_Controller.swift
//  Week4
//
//  Created by Khánh on 01/05/2021.
//

import UIKit

class Navigation_Controller: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    

    func setupUI(){
        self.navigationItem.hidesBackButton = true
    }
 

}
