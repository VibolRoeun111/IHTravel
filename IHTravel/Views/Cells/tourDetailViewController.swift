//
//  tourDetailViewController.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/4/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class tourDetailViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    private var lastContentOffset: CGFloat = 0

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var bookingButton: UIButton!
    @IBOutlet weak var pdfButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var viewContainer: UIView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewContainer.layer.borderColor = UIColor.color(red: 231, green: 234, blue: 236, alpha: 1).cgColor
        viewContainer.layer.cornerRadius = 6.0
        viewContainer.layer.borderWidth = 1.0
        
        bookingButton.layer.borderWidth = 1.0
        bookingButton.layer.borderColor = UIColor.color(red: 35, green: 87, blue: 132, alpha: 1).cgColor
        bookingButton.layer.cornerRadius = 4
        
        pdfButton.layer.borderWidth = 1.0
        pdfButton.layer.borderColor = UIColor.color(red: 208, green: 2, blue: 27, alpha: 1).cgColor
        pdfButton.layer.cornerRadius = 4
        
        collectionView.register(UINib(nibName: "otherCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "otherCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "otherCell", for: indexPath) as? otherCollectionViewCell
        
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: collectionView.frame.height)
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        self.lastContentOffset = scrollView.contentOffset.y
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if (lastContentOffset > scrollView.contentOffset.y) {
            backButton.layer.opacity = 1
        }
        else if (lastContentOffset < scrollView.contentOffset.y) {
            backButton.layer.opacity = 0
        }
    }
}
