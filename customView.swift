//
//  customView.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/11/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import UIKit

class customView: UIView {
    
    @IBOutlet weak var customLabel: UILabel!
    @IBOutlet weak var customButton: UIButton!
    
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init()
    {
        self.init()
    }

    class func instanceFromNib() -> UIView {
        return UINib(nibName: "customView", bundle: nil).instantiateWithOwner(nil, options: nil)[0] as! UIView
    }

}
