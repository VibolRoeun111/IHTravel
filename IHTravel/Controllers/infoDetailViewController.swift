//
//  infoDetailViewController.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/16/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class infoDetailViewController: UIViewController {

    var nav_infodetail:String = ""
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var informaitonTitleLabel: UILabel!
    
    @IBOutlet weak var titleContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.titleLabel.text = nav_infodetail
        
        titleContainer.layer.shadowColor = UIColor.color(red: 231, green: 234, blue: 236, alpha: 0.8).cgColor
        titleContainer.layer.shadowRadius = 2
        titleContainer.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        titleContainer.layer.shadowOpacity = 1.0
        titleContainer.layer.cornerRadius = 4.0
        titleContainer.layer.masksToBounds = false
        
    }
    

    @IBAction func backButtonPress(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
