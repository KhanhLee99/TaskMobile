//
//  Screen2ViewController.swift
//  Week4
//
//  Created by Khánh on 01/05/2021.
//

import UIKit

class Screen2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let arr1 = ["UX Research", "ámdh", "fkashf", "bkjdsahkf"]
    let arr2 = ["sndkf", "ndshkf", "kdhlfk", "ksdkj"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! Sc2Cell
        cell.lblTask.text = arr1[indexPath.row]
        cell.lblRight.text = arr2[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var view_wrap: UIView!
    @IBAction func btn_checkBox(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            view_wrap.layer.borderWidth = 0.0
//            view_wrap.layer.borderColor = UIColor..cgColor
        }
        else {
            sender.isSelected = true
            view_wrap.layer.borderWidth = 1.0
            view_wrap.layer.borderColor = UIColor.red.cgColor
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.navigationItem.title = "Create Task"
    }
    

    func setupUI(){
        let nib = UINib(nibName: "Sc2Cell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
//        self.tabBarController?.navigationItem.title = "jfdgjku"
//        let searchBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: nil)
//        self.tabBarController?.navigationItem.leftBarButtonItem = searchBarButtonItem
    }
}
