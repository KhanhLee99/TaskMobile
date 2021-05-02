//
//  Screen1ViewController.swift
//  Week4
//
//  Created by Khánh on 01/05/2021.
//

import UIKit

class Screen1ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let arr1 = ["UX Research", "Awareness Research", "Create New UI - Pertamina", "Moodboard Audience", "Audience Moodboard" ,"Color Pallete", "Tipography Study", "Sketch basic Logo", "Purchase Mockup"]
    
    let arr2 = [" Branding ", " UI/UX ", " UI/UX ", " Digital ", " Strategist ", " Digital ", " Strategist ", " Branding ", " Digital "]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell") as! TaskCell
        

        cell.lblLeft.text = arr1[indexPath.row]
        cell.lblRight.text = arr2[indexPath.row]
        
        if arr1[indexPath.row] == "Awareness Research" || arr1[indexPath.row] == "Sketch basic Logo" {
            cell.btnCheckBox.isSelected = true
            cell.viewWrap.layer.borderWidth = 1.0
            cell.viewWrap.layer.borderColor = UIColor.purple.cgColor
            cell.viewWrap.backgroundColor = .white
            cell.lblLeft.textColor = .purple
        }
        
        if arr2[indexPath.row] == " UI/UX "{
            cell.lblRight.textColor = .yellow
            cell.lblRight.backgroundColor = .green
        }
        
        if arr2[indexPath.row] == " Branding "{
            cell.lblRight.textColor = .systemTeal
            cell.lblRight.backgroundColor = .green
        }
        
        if arr2[indexPath.row] == " Digital "{
            cell.lblRight.textColor = .purple
            cell.lblRight.backgroundColor = .green
        }
        
        if arr2[indexPath.row] == " Strategist "{
            cell.lblRight.textColor = .red
            cell.lblRight.backgroundColor = .green
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    
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
        let nib = UINib(nibName: "TaskCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "taskCell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        
        
        
        
        
//        self.tabBarController?.navigationItem.title = "Task"
//        let searchBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: nil)
//        self.tabBarController?.navigationItem.leftBarButtonItem = searchBarButtonItem
    }
}
