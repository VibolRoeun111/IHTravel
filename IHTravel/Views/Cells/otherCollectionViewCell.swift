//
//  otherCollectionViewCell.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/5/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class otherCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var otherImageView: UIImageView!
    @IBOutlet weak var otherTitleLabel: UILabel!
    @IBOutlet weak var otherPriceLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        otherPriceLabel.layer.cornerRadius = 25
        otherPriceLabel.layer.borderWidth = 1
        otherPriceLabel.layer.borderColor = UIColor.red.cgColor
        
    }

}
