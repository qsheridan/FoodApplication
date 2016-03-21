//
//  tabBarViewController.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/12/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import UIKit

class tabBarViewController: UITabBarController, UITabBarControllerDelegate {
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        enableTabBarItem()
        super.viewWillAppear(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
   func enableTabBarItem() {
        
    }


}
