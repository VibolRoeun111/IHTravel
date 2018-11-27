//
//  splashScreenViewController.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/20/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class splashScreenViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.alpha = 0.0
        self.logoImageView.transform = CGAffineTransform(scaleX: 1.4, y: 1.4)
        
        UIView.animate(withDuration: 0.3, delay: 1, options: .curveLinear, animations: {
            self.logoImageView.transform = .identity
            
        }) { (true) in
            UIView.animate(withDuration: 0.5, animations: {
                self.logoImageView.transform = CGAffineTransform.init(translationX: 0, y: -90)
            }) { (true) in
                UIView.animate(withDuration: 1, animations: {
                    self.titleLabel.alpha = 1
                }) { (true) in
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
                        self.performSegue(withIdentifier: "splashSegue", sender: nil)
                    })
                    
                }
            }
            
        }
        
    }

}

    


