//
//  informationTableViewController.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/15/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class informationTableViewController: UITableViewController {

    var info_title: String = ""
    var nav_title: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = nav_title
        
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
        
        info_title = String(indexPath.row)
        
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "inforDetailSegue", sender: nil)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "inforDetailSegue" {
            if let vc = segue.destination as? infoDetailViewController {
                vc.nav_infodetail = info_title
            }
        }
    }
    
}
