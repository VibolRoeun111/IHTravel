//
//  informationTableViewController.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/15/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class informationTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "informationTableViewCell", bundle: nil), forCellReuseIdentifier: "informationCell")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "informationCell", for: indexPath) as! informationTableViewCell
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "inforDetailSegue", sender: nil)
    }
    

}
