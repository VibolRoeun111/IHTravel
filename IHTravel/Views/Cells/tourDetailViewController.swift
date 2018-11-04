//
//  tourDetailViewController.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/4/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class tourDetailViewController: UIViewController {

    @IBOutlet weak var viewContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewContainer.layer.borderColor = UIColor.black.cgColor
        viewContainer.layer.cornerRadius = 6.0
        viewContainer.layer.borderWidth = 1.0
    }
    

    

}
