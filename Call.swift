//
//  Call.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/3/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import Foundation

class Call {
    
    var dominos : String = "Dominos"
    
    func restaurantName(restaurantName : String) -> [Food] {
        
        switch restaurantName {
        case "Dominos":
            return order()
        case "Bertuccis":
            return []
        case "Upper Crust":
            return []
        default:
            return []
        }
    }
    
    /*func sortByRestaurant(list : [Food], name : String) -> [Food] {
        var foodlist : [Food] = []
        for item in list {
            if item.restaurant == name {
                foodlist.append(item)
            }
        }
        return foodlist
    }*/
    
    func order() -> [Food] {
        
        var foodlist : [Food] = []
        
        var menuItem = Food(name : "Coca-Cola", price : 1.89, descript : "", restaurant : dominos, image : "coca-cola.png")
        
        foodlist.append(menuItem)
        
        menuItem = Food(name : "Sprite", price : 1.89, descript : "", restaurant : dominos, image : "sprite2.png")
        foodlist.append(menuItem)
        
        menuItem = Food(name : "Bottled Water", price : 1.89, descript : "", restaurant : dominos, image : "water bottle .png")
        foodlist.append(menuItem)
        
        menuItem = Food(name : "Buffallo Chicken Pizza", price : 14.99, descript : "Tender chicken breast, hot sauce, and onions with provolone and american cheeses on a cheddar crust", restaurant : dominos, image : "pizza.png")
        foodlist.append(menuItem)
        
        menuItem = Food(name : "The Wisconsin 6 Cheese Pizza", price : 14.99, descript : "Robust tomato sauce, cheeses made with 100% real mozzarella, feta, provolone, cheddar, parmesan, asiago, and sprinkled with oregano on a parmesan and asiago crust", restaurant : dominos, image : "pizza.png")
        foodlist.append(menuItem)
        
        menuItem = Food(name : "Fiery Haiwaiian Pizza", price : 14.99, descript : "Sliced ham, bacon, pineapple, roasted red peppers, jalapenos, hot sauce, and provolone cheese on a parmesan crust", restaurant : dominos, image : "pizza.png")
        foodlist.append(menuItem)
        
        menuItem = Food(name : "Verde", price : 18.99, descript : "A white style pizza with fresh mozzarella, prosciutto and arugula with a balsamic glaze", restaurant : "Bertuccis", image : "pizza.png" )
        foodlist.append(menuItem)
        
        menuItem = Food(name: "Sporkie", price : 18.99, descript : "Sweet Italian sausage and ricotta cheese with house made tomato sauce and mozzarella cheese", restaurant : "Bertuccis", image : "pizza.png" )
        foodlist.append(menuItem)
        
        menuItem = Food(name : "Margherita", price : 17.99, descript : "Fresh mozzarella, tomato sauce, Romano cheese, fresh basil", restaurant : "Bertuccis", image : "pizza.png")
        foodlist.append(menuItem)
        
        menuItem = Food(name : "Coca-Cola", price : 1.89, descript : "", restaurant : "Bertuccis", image : "coca-cola.png")
        foodlist.append(menuItem)
        
        menuItem = Food(name : "Sprite", price : 1.89, descript : "", restaurant : "Bertuccis" , image : "sprite2.png")
        foodlist.append(menuItem)
        
        menuItem = Food(name : "Bottled Water", price : 1.89, descript : "", restaurant : "Bertuccis" , image : "water bottle .png")
        foodlist.append(menuItem)
        
        menuItem = Food(name : "The North End", price : 22.39, descript : "Italian meatballs, ricotta cheese, Parmigiano-Reggiano and fresh basil (no shredded mozarella)", restaurant : "Upper Crust", image : "pizza.png")
        foodlist.append(menuItem)
        
        menuItem = Food(name : "The Swellesley", price : 22.39, descript : "Pizza Arrabbiata - Parmigiano-Reggiano, chorizo, crushed red pepper, fresh garlic, olive oil & fresh basil (no shredded mozzarella)", restaurant : "Upper Crust", image : "pizza.png")
        foodlist.append(menuItem)
        
        menuItem = Food(name : "Geppetto's Roasted Veggie", price : 21.59, descript : "Fresh mozzarella cheese, roasted eggplant, zucchini, yelow squash & fresh basil", restaurant : "Upper Crust", image : "pizza.png")
        
        menuItem = Food(name : "Coca-Cola", price : 1.89, descript : "", restaurant : "Upper Crust", image : "coca-cola.png")
        foodlist.append(menuItem)
        
        menuItem = Food(name : "Sprite", price : 1.89, descript : "", restaurant : "Upper Crust" , image : "sprite2.png")
        foodlist.append(menuItem)
        
        menuItem = Food(name : "Bottled Water", price : 1.89, descript : "", restaurant : "Upper Crust" , image : "water bottle .png")
        foodlist.append(menuItem)
        
        return foodlist
    }
    
    func restaurants() -> [Restaurant] {
        
        var restaurantList: [Restaurant] = []
        
        var restaurant = Restaurant(name : "Dominos", distance : "0.5 mi", url : "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Dominos_pizza_logo.svg/2000px-Dominos_pizza_logo.svg.png", background : "http://pixel.nymag.com/imgs/daily/grub/2014/09/03/03-dominos-pizza-logo.w245.h368.2x.jpg")
        restaurantList.append(restaurant)
        
        restaurant = Restaurant(name : "Bertuccis", distance : "2.0 mi", url : "http://easternpa.jdrf.org/wp-content/uploads/sites/76/2013/09/Bertucci_s.jpg", background : "http://media-cdn.tripadvisor.com/media/photo-s/02/da/60/d0/bertucci-s-brick-oven.jpg")
        restaurantList.append(restaurant)
        
        restaurant = Restaurant(name : "Upper Crust", distance : "3.0 mi", url : "http://vectorlogotypes.net/logos/preview/U/UpperCrust.png", background : "http://media-cdn.tripadvisor.com/media/photo-s/02/c3/dc/c9/upper-crust.jpg")
        restaurantList.append(restaurant)
        
        return restaurantList
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}