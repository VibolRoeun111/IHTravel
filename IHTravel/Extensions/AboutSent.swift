//
//  aboutSent.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/12/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class AboutSent: NSObject {
    let blackView = UIView()
    let viewContainer: UIView = {
       let vc = UIView()
        vc.backgroundColor = UIColor.white
        vc.layer.cornerRadius = 8
       
        return vc
    }()
    lazy var backButton: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "delete"), for: .normal)
        btn.addTarget(self, action: #selector(dimissBlackview), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        return btn
    }()
    let titleLabel: UILabel = {
        let lb = UILabel()
        lb.text = "Contact us"
        lb.font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    let titleName: UILabel = {
        let lb = UILabel()
        lb.text = "Name"
        lb.font = UIFont(name: "Apple SD Gothic Neo", size: 16)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    let titlePhone: UILabel = {
        let lb = UILabel()
        lb.text = "Phone Numbere"
        lb.font = UIFont(name: "Apple SD Gothic Neo", size: 16)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()

  
    
    lazy var stack:UIStackView = {
        let s = UIStackView(frame: self.viewContainer.bounds)
        s.axis = .vertical
        s.distribution = .fillEqually
        s.alignment = .fill
        s.spacing = 5
        s.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        //s.addArrangedSubview(self.v1)
        //s.addArrangedSubview(self.v2)
        
        return s
    }()
    
    override init() {
        super.init()
        
        viewContainer.addSubview(backButton)
        viewContainer.addSubview(titleLabel)
        viewContainer.addSubview(stack)
        
        setupBackButton()
        setupTitleLabel()
        setupStack()
    }
    
    func setupBackButton(){
        backButton.topAnchor.constraint(equalTo: viewContainer.topAnchor, constant: 0.0).isActive = true
        backButton.rightAnchor.constraint(equalTo: viewContainer.rightAnchor, constant: 0.0).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    func setupTitleLabel(){
        titleLabel.centerXAnchor.constraint(equalTo: viewContainer.centerXAnchor, constant: 0.0).isActive = true
        titleLabel.topAnchor.constraint(equalTo: viewContainer.topAnchor, constant: 8.0).isActive = true
    }
    func setupStack(){
        stack.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 0.0).isActive = true
        stack.leftAnchor.constraint(equalTo: viewContainer.leftAnchor, constant: 0.0).isActive = true
        stack.rightAnchor.constraint(equalTo: viewContainer.rightAnchor, constant: 0.0).isActive = true
    }
    
    func showFillForm(){
        
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
    
    @objc func dimissBlackview(){
        print("click")
        UIView.animate(withDuration: 0.3) {
            self.blackView.alpha = 0
            if let window = UIApplication.shared.keyWindow {
                self.viewContainer.frame = CGRect(x: 0.0, y: window.frame.height, width: self.viewContainer.frame.width, height: self.viewContainer.frame.height)
            }
            
        }
    }
}
