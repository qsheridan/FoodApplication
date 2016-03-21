//
//  FoodDescriptionViewController.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/5/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import UIKit

class FoodDescriptionViewController: UIViewController, UITextFieldDelegate {
    
    var foodItem: Food?
    let subView = customView.instanceFromNib() as! customView
    //let tabBar : tabBarViewController?
    
   /* required init(coder aDecoder: NSCoder?) {
        tabBar = tabBarViewController()
        super.init(coder: aDecoder!)
    } */

    
    @IBOutlet weak var starLabel: UIButton!
    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var foodPrice: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var Quantity: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var QuantityTextLabel: UITextField!
    @IBOutlet weak var addToCartButton: UIButton!
    @IBOutlet weak var foodDescript: UILabel!
    
    
    
    @IBAction func StarButton(sender: AnyObject) {
        starLabel.tintColor = UIColor.yellowColor()
        starList.append(foodItem!)
    }
    
    @IBAction func addToCartAction(sender: UIButton) {
        cartList.append(foodItem!)
        setUpCustomView()
    }
    
    
    @IBAction func plusAction(sender: UIButton) {
        var num: Int = QuantityTextLabel.text.toInt()!
        if num > 9 {
            
        } else {
            num += 1
            var text : String = String(num)
            QuantityTextLabel.text = text
        }
    }
    
    @IBAction func minusAction(sender: UIButton) {
        var num: Int = QuantityTextLabel.text.toInt()!
        if num <= 1 {
            
        } else {
            num -= 1
            var text : String = String(num)
            QuantityTextLabel.text = text
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "red background2.png")!)
        setLabels()
        setImages(foodItem!.image)
        self.title = foodItem!.name
        QuantityTextLabel.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setLabels() {
        foodName.text = foodItem!.name
        foodName.textColor = UIColor.whiteColor()
        foodPrice.text = "$" + String(format: "%.2f", foodItem!.price)
        foodPrice.textColor = UIColor.whiteColor()
        if (foodItem?.descript != "" && foodItem?.descript != nil){
            foodDescript.text = foodItem!.descript
            foodDescript.textColor = UIColor.whiteColor()
            
        }
        starLabel.tintColor = UIColor.whiteColor()
        Quantity.textColor = UIColor.whiteColor()
        plusButton.tintColor = UIColor.whiteColor()
        plusButton.backgroundColor = UIColor.clearColor()
        plusButton.layer.cornerRadius = 5
        plusButton.layer.borderWidth = 1
        plusButton.layer.borderColor = UIColor.whiteColor().CGColor
        minusButton.tintColor = UIColor.whiteColor()
        minusButton.backgroundColor = UIColor.clearColor()
        minusButton.layer.cornerRadius = 5
        minusButton.layer.borderWidth = 1
        minusButton.layer.borderColor = UIColor.whiteColor().CGColor
        addToCartButton.tintColor = UIColor.whiteColor()
        addToCartButton.backgroundColor = UIColor.clearColor()
        addToCartButton.layer.cornerRadius = 5
        addToCartButton.layer.borderWidth = 1
        addToCartButton.layer.borderColor = UIColor.whiteColor().CGColor
        
    }
    
    func setImages(imageName : String) {
        let Image : UIImage = UIImage(named: imageName)!
        let imageView : UIImageView = UIImageView(image: Image)
        imageView.frame = CGRect(x: 20, y:170, width: 200, height: 200)
        imageView.layer.borderWidth = 0.5
        self.view.addSubview(imageView)
        
        
    }
    
    func textField(textField : UITextField, shouldChangeCharactersInRange range : NSRange, replacementString string: String) -> Bool {
        
        let text = (QuantityTextLabel.text as NSString).stringByReplacingCharactersInRange(range,withString: string)
        
        if let intVal = text.toInt() {
            plusButton.enabled = true
            minusButton.enabled = true
        } else {
            plusButton.enabled = false
            minusButton.enabled = false
        }
        
        return false
    }
    
 
    func setUpCustomView() {
        var Height = subView.frame.size.height
        var Width = subView.frame.size.width
        subView.frame = CGRectMake((view.frame.size.width/2.0) - (Width/2.0), view.frame.size.height/3.0 , Width, Height)
        subView.layer.cornerRadius = 5
        subView.layer.borderWidth = 1
        subView.customButton.layer.cornerRadius = 5
        subView.customButton.layer.borderWidth = 1
        subView.customButton.backgroundColor = UIColor.whiteColor()
        subView.customButton.addTarget(self, action: "subViewButton", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(subView)
        
    }
    
    func subViewButton() {
        var quant = QuantityTextLabel.text.toInt()!
        foodItem?.quantity = quant
        //cartList.append(foodItem!)
        self.subView.removeFromSuperview()
        
    }
    

  

}
