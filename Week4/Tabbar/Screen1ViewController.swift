//
//  Screen1ViewController.swift
//  Week4
//
//  Created by Khánh on 01/05/2021.
//

import UIKit

class Screen1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.hidesBackButton = true
        self.tabBarController?.navigationItem.title = "Task"
    }

    func setupUI(){
//        self.tabBarController?.navigationItem.title = "Task"
//        let searchBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: nil)
//        self.tabBarController?.navigationItem.leftBarButtonItem = searchBarButtonItem
    }
}
