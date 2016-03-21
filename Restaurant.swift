//
//  Restaurant.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/3/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import Foundation

class Restaurant {
    let name : String?
    let distance : String?
    let url : String?
    let background : String?
    
    init(name : String, distance : String, url : String, background : String) {
        self.name = name
        self.distance = distance
        self.url = url
        self.background = background
    }
    
}