//
//  Screen2ViewController.swift
//  Week4
//
//  Created by Khánh on 01/05/2021.
//

import UIKit

class Screen2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.navigationItem.title = "Create Task"
    }
    

    func setupUI(){
//        self.tabBarController?.navigationItem.title = "jfdgjku"
//        let searchBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: nil)
//        self.tabBarController?.navigationItem.leftBarButtonItem = searchBarButtonItem
    }
}
