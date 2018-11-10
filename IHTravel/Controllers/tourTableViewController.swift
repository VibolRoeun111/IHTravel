//
//  tourTableViewController.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/3/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class tourTableViewController: UITableViewController {
    
    let discount = ["discount 1", "discount 2", "discount 3"]
    let local = ["local 1", "local 2", "local 3"]
    let abroad = ["abroad 1", "abroad 2", "abroad 3"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "tourHeader", bundle: nil), forCellReuseIdentifier: "headerCell")
        tableView.register(UINib(nibName: "tourCell", bundle: nil), forCellReuseIdentifier: "tourCell")
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell") as? tourHeaderTableViewCell
        
        switch section {
        case 0:
            cell?.tourHeaderLabel.text = "Discount"
            break
        case 1:
            cell?.tourHeaderLabel.text = "Local"
            break
        case 2:
            cell?.tourHeaderLabel.text = "Abroad"
            break
        default:
            cell?.tourHeaderLabel.text = "Other"
            break
        }
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tourCell", for: indexPath) as? tourTableViewCell
        
        switch indexPath.section {
        case 0:
            cell?.tourTitleLabel.text = discount[indexPath.row]
            
            break
        case 1:
            cell?.tourTitleLabel.text = discount[indexPath.row]
            break
        case 2:
            cell?.tourTitleLabel.text = discount[indexPath.row]
            break
    
        default:
            cell?.tourTitleLabel.text = "Others"
            break
        }
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30.0
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "tourSegue", sender: nil)
    }



}
