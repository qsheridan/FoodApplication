
//
//  ExpenseCell.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/18/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import UIKit

class ExpenseCell: UITableViewCell {
    
    @IBOutlet weak var expenseLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    
    @IBOutlet weak var expenseLabel2: UILabel!
    @IBOutlet weak var costLabel2: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
