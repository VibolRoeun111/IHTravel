//
//  partnerDetailTableViewCell.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/7/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class partnerDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var goldLabel: UILabel!
    @IBOutlet weak var partnerPhoneLabel: UILabel!
    @IBOutlet weak var partnerAddressLabel: UILabel!
    @IBOutlet weak var partnerDetailImageView: UIImageView!
    @IBOutlet weak var partnerTitleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewContainer.layer.shadowColor = UIColor.color(red: 231, green: 234, blue: 236, alpha: 0.8).cgColor
        viewContainer.layer.shadowRadius = 2
        viewContainer.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        viewContainer.layer.shadowOpacity = 1.0
        viewContainer.layer.masksToBounds = false
        viewContainer.layer.cornerRadius = 4.0
        
    }

  
    
}
