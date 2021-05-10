//
//  ViewController.swift
//  Week4
//
//  Created by Khánh on 01/05/2021.
//

import UIKit
import FSCalendar

class ViewController: UIViewController {
    @IBOutlet weak var btnCreate: UIButton!
    
    @IBAction func btn_click1(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let sc1 = sb.instantiateViewController(withIdentifier: "tabbar")
        self.navigationController?.pushViewController(sc1, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        self.tabBarController?.navigationItem.hidesBackButton = true
        
//        self.navigationItem.hidesBackButton = true
    }

    func setupUI(){
//        self.tabBarController?.navigationItem.title = "Task"
        btnCreate.layer.cornerRadius = 6.0
        let searchBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: nil)
//        self.tabBarController?.navigationItem.leftBarButtonItem = searchBarButtonItem
        
        self.navigationItem.leftBarButtonItem = searchBarButtonItem
        
    }

}

