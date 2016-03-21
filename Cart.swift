//
//  Cart.swift
//  TableView
//
//  Created by Quinn Sheridan on 7/31/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import Foundation

class Cart {
    
    var cart : [Food] = []
    
    func addToCart(item : Food) {
        cart.append(item)
    }
    
    func returnCart() -> [Food] {
        return cart
    }
    
}