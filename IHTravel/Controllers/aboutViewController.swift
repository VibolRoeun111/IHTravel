//
//  aboutViewController.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/8/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class aboutViewController: UIViewController {

    @IBOutlet weak var contactMessageTextView: UITextView!
    @IBOutlet weak var contactEmailTextField: UITextField!
    @IBOutlet weak var contactPhoneTextField: UITextField!
    @IBOutlet weak var contactNameTextField: UITextField!
    @IBOutlet var viewContainer: UIView!
    @IBOutlet weak var viewContactContainer: UIView!
    
    let blackView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupSadow()
    }
    
    func setupSadow(){
        viewContactContainer.layer.shadowColor = UIColor.color(red: 231, green: 234, blue: 236, alpha: 0.8).cgColor
        viewContactContainer.layer.shadowRadius = 4
        viewContactContainer.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        viewContactContainer.layer.shadowOpacity = 1.0
        viewContactContainer.layer.masksToBounds = false
        
        //contact TextView
        contactMessageTextView.layer.borderColor = UIColor.lightGray.cgColor
        contactNameTextField.layer.borderColor = UIColor.lightGray.cgColor
        contactEmailTextField.layer.borderColor = UIColor.lightGray.cgColor
        contactPhoneTextField.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    @IBAction func shareButtonPress(_ sender: Any) {
        
        if let window = UIApplication.shared.keyWindow {
            
            blackView.backgroundColor = UIColor(white: 0.0, alpha: 0.5)
            blackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(dimissBlackview)))
            window.addSubview(blackView)
            window.addSubview(viewContainer)
            let marginTop: CGFloat = 100
            let height: CGFloat = window.frame.height - marginTop
            viewContainer.frame = CGRect(x: 0.0, y: window.frame.height, width: window.frame.width, height: height)
            
            blackView.frame = window.frame
            blackView.alpha = 0
            
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.blackView.alpha = 1
                self.viewContainer.frame = CGRect(x: 0.0, y: marginTop, width: self.viewContainer.frame.width, height: self.viewContainer.frame.height)
                
                
            }, completion: nil)
            
        }
    }
    @IBAction func handleDimiss(_ sender: Any) {
        dimissBlack()
    }
    
    @objc func dimissBlackview(){
        
        dimissBlack()
    }
    
    func dimissBlack(){
        UIView.animate(withDuration: 0.3) {
            self.blackView.alpha = 0
            if let window = UIApplication.shared.keyWindow {
                self.viewContainer.frame = CGRect(x: 0.0, y: window.frame.height, width: self.viewContainer.frame.width, height: self.viewContainer.frame.height)
            }
            
        }
    }
    
}
