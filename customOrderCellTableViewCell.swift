//
//  customOrderCellTableViewCell.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/17/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import UIKit

class customOrderCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var FoodName: UILabel!
    @IBOutlet weak var FoodQuantity: UILabel!
    @IBOutlet weak var FoodPrice: UILabel!
    
    init(style : UITableViewStyle, reuseIdentifier : String) {
        super.init(style: style, reuseIdentifier : reuseIdentifier)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
