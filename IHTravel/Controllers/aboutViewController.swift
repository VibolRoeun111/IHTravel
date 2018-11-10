//
//  aboutViewController.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/8/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class aboutViewController: UIViewController {

    @IBOutlet weak var viewContactContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        viewContactContainer.layer.shadowColor = UIColor.color(red: 231, green: 234, blue: 236, alpha: 0.8).cgColor
        viewContactContainer.layer.shadowRadius = 4
        viewContactContainer.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        viewContactContainer.layer.shadowOpacity = 1.0
        viewContactContainer.layer.masksToBounds = false
    }
    

  

}
