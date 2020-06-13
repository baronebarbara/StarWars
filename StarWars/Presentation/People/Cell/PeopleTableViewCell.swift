//
//  TableViewCell.swift
//  StarWars
//
//  Created by Bárbara Barone - BBA on 11/06/20.
//  Copyright © 2020 Bárbara Barone - BBA. All rights reserved.
//

import UIKit

class PeopleTableViewCell: UITableViewCell {
    @IBOutlet weak var nomeLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(model: People) {
        self.nomeLbl.text = model.name
    }
    
}
