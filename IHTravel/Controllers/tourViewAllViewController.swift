//
//  tourViewAllViewController.swift
//  IHTravel
//
//  Created by Vibol's Macbook Pro on 11/27/18.
//  Copyright © 2018 Vibol Roeun. All rights reserved.
//

import UIKit

class tourViewAllViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    let titleIndex = ["Discount", "Local", "Abroad"]
    var index: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = titleIndex[index]
        tableView.register(UINib(nibName: "tourCell", bundle: nil), forCellReuseIdentifier: "tourViewAll")
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tourViewAll", for: indexPath) as? tourTableViewCell
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "tourViewAllSegue", sender: nil)
        }
    }


}
