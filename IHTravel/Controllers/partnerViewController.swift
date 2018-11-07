//
//  partnerViewController.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/7/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class partnerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    let titles = ["Restuarant & coffee", "Hotel", "Spa & Massages", "Optic", "Beatuty", "Garage"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "partnerTableViewCell", bundle: nil), forCellReuseIdentifier: "partnerCell")
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "partnerCell", for: indexPath) as! partnerTableViewCell
        cell.titleLabel.text = titles[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 260.0
    }
  

}
