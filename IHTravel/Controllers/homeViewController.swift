//
//  ViewController.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 10/22/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class homeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    let images = ["image1", "image2", "image3", "image4"]
    @IBOutlet weak var discountCollectionView: UICollectionView!
    @IBOutlet weak var tourViewContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //get rid of navigation underline
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        tourViewContainer.layer.cornerRadius = 8
        tourViewContainer.layer.shadowColor = UIColor(white: 0, alpha: 0.5).cgColor
        tourViewContainer.layer.shadowRadius = 4
        tourViewContainer.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        tourViewContainer.layer.masksToBounds = false
        tourViewContainer.layer.shadowOpacity = 0.4
        
        discountCollectionView.register(UINib(nibName: "discountCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "discountCell")
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = discountCollectionView.dequeueReusableCell(withReuseIdentifier: "discountCell", for: indexPath) as! discountCollectionViewCell
        
        cell.imageView.image = UIImage(named: images[indexPath.row])
        
        
        return cell
        
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: discountCollectionView.frame.width - 80, height: discountCollectionView.frame.height)
    }

}

