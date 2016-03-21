//
//  AccountInformationViewController.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/26/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import UIKit

var firstName : String?
var lastName : String?
var emailAddress : String?
var password : String?

class AccountInformationViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var emailaddressTextField: UITextField!
    @IBOutlet weak var currentPasswordTextField: UITextField!
    @IBOutlet weak var newPasswordTextField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBAction func SaveAccountInformation(sender: AnyObject) {
        firstName = firstNameTextField.text
        lastName = lastnameTextField.text
        emailAddress = emailaddressTextField.text
        password = newPasswordTextField.text
    }

    @IBAction func CancelButton(sender: AnyObject) {
        //performSegueWithIdentifier("pushToProfile", sender: nil)
    }
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "red background2.png")!)
        self.title = "Account"
        setUpTextFields()
        firstNameTextField.delegate = self
        super.viewDidLoad()

    }
    
    override func viewWillAppear(animated: Bool) {
        activityIndicator.stopAnimating()
        super.viewWillAppear(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    func setUpTextFields() {
        firstNameTextField.resignFirstResponder()
        
        if let x = firstName {
            firstNameTextField.text = firstName!
        }
        if let y = lastName {
            lastnameTextField.text = lastName!
        }
        if let z = emailAddress {
            emailaddressTextField.text = emailAddress!
        }
        if let w = password {
            currentPasswordTextField.text = password!
        }
        
        
    }
    

    

}
