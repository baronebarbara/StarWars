//
//  TableViewController.swift
//  StarWars
//
//  Created by Bárbara Barone - BBA on 11/06/20.
//  Copyright © 2020 Bárbara Barone - BBA. All rights reserved.
//

import UIKit
import Foundation

class PeopleTableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "PeopleTableViewCell")
    }
    


}

extension PeopleTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PeopleTableViewCell.self), for: indexPath) as? PeopleTableViewCell else{
            return UITableViewCell()
            
        }
        return cell
    }
    
    
}



