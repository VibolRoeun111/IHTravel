//
//  partnerTableViewCell.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/7/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class partnerTableViewCell: UITableViewCell {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var viewContainer: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        viewContainer.layer.cornerRadius = 4.0
        viewContainer.layer.shadowColor = UIColor(white: 0, alpha: 0.5).cgColor
        viewContainer.layer.shadowRadius = 4
        viewContainer.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        viewContainer.layer.masksToBounds = false
        viewContainer.layer.shadowOpacity = 0.4
    
    }

    
}
