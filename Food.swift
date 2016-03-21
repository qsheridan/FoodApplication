//
//  Food.swift
//  TableView
//
//  Created by Quinn Sheridan on 7/27/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import Foundation

var cartList : [Food] = []
var cartHistory : [String : [Food]] = [:]
var cartTimeHistory : [String] = []
var starList : [Food] = []

class Food {
    
    var name : String
    var price : Double
    var descript : String
    var restaurant : String
    var quantity: Int = 0
    var image: String
    
    init(name : String, price : Double, descript : String, restaurant : String, image : String) {
        
        self.name = name
        self.price = price
        self.descript = descript
        self.restaurant = restaurant
        self.image = image
       
    }
    
  
}