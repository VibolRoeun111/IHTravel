//
//  discountCollectionViewCell.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/14/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class discountCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = 4
        
        
    }

}
