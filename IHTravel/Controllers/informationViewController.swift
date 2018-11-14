//
//  informationViewController.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/14/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class informationViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let images = ["image1", "image2", "image3", "image4"]
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(UINib(nibName: "discountCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "discountCell")
     
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "discountCell", for: indexPath) as! discountCollectionViewCell
        cell.imageView.image = UIImage(named: images[indexPath.row])
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width - 100, height: collectionView.frame.height)
    }

}
