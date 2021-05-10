//
//  UploadFileViewController.swift
//  Week4
//
//  Created by Khánh on 04/05/2021.
//

import UIKit

class UploadFileViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let arrImg = ["congTron", "coll1", "coll2", "coll3"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrImg.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: "imgCell", for: indexPath) as! ImageCell
        
        cell.img.image = UIImage(named: arrImg[indexPath.row])
        
        return cell
    }
    

    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var btnUpload: UIButton!
    @IBOutlet weak var viewUpload: UIView!
    @IBOutlet weak var collectionView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.navigationItem.title = "Upload File"
    }
    
    func setupUI(){
        contentView.layer.cornerRadius = 5.0
        btnUpload.layer.cornerRadius = 6.0
        viewUpload.layer.cornerRadius = 6.0
        viewUpload.layer.borderWidth = 1.0
        viewUpload.layer.borderColor = UIColor.systemGray5.cgColor
        
        collectionView.layer.borderWidth = 1.0
        collectionView.layer.borderColor = UIColor.systemGray5.cgColor
        
        
        collection.delegate = self
        collection.dataSource = self
            
    }
    


}
