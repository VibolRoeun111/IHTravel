//
//  informationViewController.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/14/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class informationViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var informationTitle: [UILabel]!
    
    @IBOutlet var informationViews: [UIView]!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var view_title: String = ""
    
    let images = ["image1", "image2", "image3", "image4"]
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(UINib(nibName: "discountCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "discountCell")
        
        //get rid of navigation underline
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        for view in informationViews {
            view.layer.cornerRadius = 4.0
            view.layer.shadowColor = UIColor.color(red: 231, green: 234, blue: 236, alpha: 0.8).cgColor
            view.layer.shadowRadius = 2
            view.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
            view.layer.masksToBounds = false
            view.layer.shadowOpacity = 1.0
            view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleGestureVeiw(_:))))
        }
     
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
    
    @objc func handleGestureVeiw(_ sender: UITapGestureRecognizer){
        
        view_title = informationTitle[(sender.view?.tag)!].text!
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "informationSegue", sender: nil)
        }
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "informationSegue" {
            if let vc = segue.destination as? informationTableViewController {
                
                vc.nav_title = view_title
            }
        }
        
    }
    
}
