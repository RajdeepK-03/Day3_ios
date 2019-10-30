//
//  CountryTableViewController.swift
//  Day3_ios
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CountryTableViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tblCountry: UITableView!
    
    let countries = ["India", " Canada" , " Usa", " Russia", "Srilanka" , " Pakistan", "China","Mexico"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblCountry.dataSource = self
        tblCountry.delegate = self
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return countries.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = countries[indexPath.row]
        return cell
    }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

