//
//  tourTableViewCell.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/4/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class tourTableViewCell: UITableViewCell {

    @IBOutlet weak var cornerView: UIView!

    @IBOutlet weak var tourBookingButton: UIButton!
    @IBOutlet weak var tourLikeButton: UIButton!
    @IBOutlet weak var tourShareButton: UIButton!
    @IBOutlet weak var tourPromotionLabel: UILabel!
    @IBOutlet weak var tourTitleLabel: UILabel!
    @IBOutlet weak var tourImageView: UIImageView!
    
    @IBOutlet weak var tourDateLabel: UILabel!
    @IBOutlet weak var tourPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        tourBookingButton.layer.borderWidth = 1.0
        tourBookingButton.layer.borderColor = UIColor.color(red: 35, green: 87, blue: 132, alpha: 1).cgColor
        tourBookingButton.layer.cornerRadius = 6
        
        tourPromotionLabel.layer.borderColor = UIColor.white.cgColor
        tourPromotionLabel.layer.borderWidth = 1.0
        tourPromotionLabel.layer.cornerRadius = 4
        
        cornerView.layer.cornerRadius = 4.0
        cornerView.layer.shadowColor = UIColor(white: 0, alpha: 0.5).cgColor
        cornerView.layer.shadowRadius = 4
        cornerView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        cornerView.layer.masksToBounds = false
        cornerView.layer.shadowOpacity = 0.4
        
    }
    
}
