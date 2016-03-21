//
//  Query.swift
//  TableView
//
//  Created by Quinn Sheridan on 7/26/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import Foundation
import UIKit

class Query {
    
    var dominos : String = "Dominos"
    
    func restaurantName(restaurantName : String) -> [Food] {
        
        switch restaurantName {
            case "Dominos":
            return []
            case "Bertuccis":
            return []
            case "Dominos":
            return []
        default:
            return []
        }
    }
    
    /*func order() -> [Food] {
        
        var foodlist : [Food] = []
        
        var dominosItem = Food(name : "Coca-Cola", price : "1.89", descript : "", restaurant : dominos, image : "http://pngimg.com/upload/cocacola_PNG5.png")
        
        foodlist.append(dominosItem)
        
        dominosItem = Food(name : "Sprite", price : "1.89", descript : "", restaurant : dominos, image : "http://spartanbizcorp.com/uploads/product_items/2015_03_20_32_46_softdrink6.jpg")
        foodlist.append(dominosItem)
        
        dominosItem = Food(name : "Bottled Water", price : "1.89", descript : "", restaurant : dominos, image : "http://beforeitsnews.com/contributor/upload/3529/images/water-bottle-537x402.jpg")
        foodlist.append(dominosItem)
        
        dominosItem = Food(name : "Buffallo Chicken Pizza", price : "14.99", descript : "Tender chicken breast, hot sauce, and onions with provolone and american cheeses on a cheddar crust", restaurant : dominos, image : "http://d1p2lndmkj2nyk.cloudfront.net/wp-content/uploads/2012/09/Buffalo-Chicken-Pizza-1.jpg")
        foodlist.append(dominosItem)
        
        dominosItem = Food(name : "The Wisconsin 6 Cheese Pizza", price : "14.99", descript : "Robust tomato sauce, cheeses made with 100% real mozzarella, feta, provolone, cheddar, parmesan, asiago, and sprinkled with oregano on a parmesan and asiago crust", restaurant : dominos, image : "http://c3240dd96f54819fb6f2-90846526673b19d9a04c27097b58cb86.r6.cf2.rackcdn.com/2013/02/cheese-pizza.jpg")
        foodlist.append(dominosItem)
        
        dominosItem = Food(name : "Fiery Haiwaiian Pizza", price : "$14.99", descript : "Sliced ham, bacon, pineapple, roasted red peppers, jalapenos, hot sauce, and provolone cheese on a parmesan crust", restaurant : dominos, image : "http://rvapizzaandsubs.com/wp-content/uploads/2013/09/Hawaiian-pizza-e1382899525428.png")
        foodlist.append(dominosItem)
        
    
        return foodlist
    }*/
    
    /*func orderDict(name: String) -> Dictionary<String,String> {
        var q = Query()
        var dictList = q.order()
        
        for item in dictList {
            if item["name"] == name {
                return item
            }
        }
        
        return [:]
    }*/
    
    /*func orderString(name:String, key : String) -> String {
        
        var q = Query()
        var dictList = q.order()
        
        for item in dictList {
            if item["name"] == name {
                return item[key]!
            }
        }
        
        return ""
    }*/

}

