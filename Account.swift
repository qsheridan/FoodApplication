//
//  Account.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/26/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import Foundation

var user : Account?

class Account {
    
    var firstName: String?
    var lastName: String?
    var emailAddress: String?
    var password: String?
    
    init(firstName: String, lastName: String, emailAddress: String, password: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.emailAddress = emailAddress
        self.password = password
        
    }
    
    func setUser() -> Account {
        user = Account(firstName: "", lastName: "", emailAddress: "", password: "")
        return user!
    }
    
    
}