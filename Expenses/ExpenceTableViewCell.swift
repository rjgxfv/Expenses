//
//  ExpenceTableViewCell.swift
//  Expenses
//
//  Created by Robert Graman on 1/24/19.
//  Copyright © 2019 Robert Graman. All rights reserved.
//

import UIKit

class ExpenceTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
