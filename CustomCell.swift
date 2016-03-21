//
//  CustomCell.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/17/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var customName: UILabel!
    @IBOutlet weak var customPrice: UILabel!
    @IBOutlet weak var customQuantity: UILabel!
    
    @IBOutlet weak var customName2: UILabel!
    @IBOutlet weak var customPrice2: UILabel!
    @IBOutlet weak var customQuantity2: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
