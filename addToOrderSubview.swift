//
//  addToOrderSubview.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/10/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import UIKit

@IBDesignable class addToOrderSubview: UIView {
    

    @IBOutlet weak var orderLabel: UILabel!
    @IBOutlet weak var okayButton: UIButton!
    
   var labelTitle : String? {
        get {
            return orderLabel.text
        } set(labelTitle) {
            orderLabel.text = labelTitle
        }
    }
    
    var view : UIView!
    
    
    override init (frame : CGRect) {
        super.init(frame: frame)
        setUp()
    }

    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }
    
    func setUp() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "addToOrderSubview", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }
    

}
