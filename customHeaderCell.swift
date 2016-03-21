//
//  customHeaderCell.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/18/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import UIKit

class customHeaderCell: UITableViewCell {

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var headerLabel3: UILabel!
    @IBOutlet weak var headerLabel2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
