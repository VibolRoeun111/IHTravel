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
        otherPriceLabel.layer.cornerRadius = 23
        otherPriceLabel.layer.borderWidth = 1
        otherPriceLabel.layer.borderColor = UIColor.color(red: 208, green: 2, blue: 27, alpha: 1).cgColor
        
    }

}
