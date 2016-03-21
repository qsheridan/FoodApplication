//
//  OrderViewController.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/15/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var OrderTableViewCustom: UITableView!
    @IBOutlet weak var MenuButton: UIButton!
    @IBOutlet weak var EditButton: UIButton!
    @IBOutlet weak var orderButton: UIButton!
    
    
    var costArray: [String] = ["Total", "Delivery Cost", "Tip", "Tax", "Final Cost"]
    var costNumbers: [Double] = []
    var finalDate = ""
    var height : CGFloat?
    var num : Int = 0
    var Total: Double?
    var deliveryCost: Double?
    var Tip: Double?
    var Tax: Double?
    var finalCost: Double?
    
    @IBAction func addOrder(sender: UIButton) {
        getDate()
        cartTimeHistory.append(finalDate)
        cartHistory[finalDate] = cartList
        cartList = []
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "red background2.png")!)
        OrderTableViewCustom.delegate = self
        OrderTableViewCustom.dataSource = self
        OrderTableViewCustom.backgroundColor = UIColor.clearColor()
        //OrderTableViewCustom.rowHeight = 66
        self.OrderTableViewCustom.reloadData()
    }
    
    override func viewWillAppear(animated: Bool) {
        self.title = "Order"
        tableViewHeight()
        OrderTableViewCustom.frame = CGRectMake(OrderTableViewCustom.frame.origin.x, OrderTableViewCustom.frame.origin.y, CGFloat(360) , height!)
        self.OrderTableViewCustom.reloadData()
        setUpCost()
        if cartList.isEmpty == false {
            self.orderButton.enabled = true
            self.orderButton.backgroundColor = UIColor.clearColor()
            self.orderButton.tintColor = UIColor.clearColor()
            self.orderButton.layer.cornerRadius = 5.0
            self.orderButton.layer.borderWidth = 1.0
            self.orderButton.tintColor = UIColor.whiteColor()
            var height2 : CGFloat = height! + CGFloat(100)
            self.orderButton.frame = CGRectMake(CGFloat(165), height! + CGFloat(100), orderButton.frame.size.width, orderButton.frame.size.height)
            println("orderButton height :")
            println(height! + CGFloat(100))
        } else {
            self.orderButton.enabled = false
            self.orderButton.backgroundColor = UIColor.clearColor()
        }
        super.viewWillAppear(true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
  
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        switch (indexPath.section) {
        
        case 0:
            
            let cell : CustomCell = OrderTableViewCustom.dequeueReusableCellWithIdentifier("cellOrder", forIndexPath: indexPath) as! CustomCell
            let num = indexPath.row
            cell.customName!.text = cartList[num].name
            cell.customName!.sizeToFit()
            cell.customName!.textColor = UIColor.whiteColor()
            cell.customPrice!.text = "$" + String(format: "%.2f", cartList[num].price)
            cell.customPrice!.textColor = UIColor.whiteColor()
            cell.customPrice!.sizeToFit()
            //cell.customPrice.frame = CGRectMake(cell.customPrice.frame.origin.x, cell.customPrice.frame.origin.y + CGFloat(40), cell.customPrice.frame.size.width, cell.customPrice.frame.size.height)
            cell.customQuantity!.text = String(cartList[num].quantity)
            cell.customQuantity!.textColor = UIColor.whiteColor()
            cell.backgroundColor = UIColor.clearColor()
            
            return cell
            
        default :
            
            let cell : ExpenseCell = OrderTableViewCustom.dequeueReusableCellWithIdentifier("expenseCell", forIndexPath: indexPath) as! ExpenseCell
            cell.expenseLabel!.text = costArray[indexPath.row]
            cell.expenseLabel!.textColor = UIColor.whiteColor()
            var double : Double = costNumbers[indexPath.row]
            cell.costLabel!.text = "$" + String(format: "%.2f", double)
            cell.costLabel!.sizeToFit()
            cell.costLabel!.textColor = UIColor.whiteColor()
            //cell.costLabel!.frame = CGRectMake(cell.costLabel.frame.origin.x, cell.costLabel.frame.origin.y + CGFloat(40), cell.costLabel.frame.size.width, cell.costLabel.frame.size.height)
            cell.backgroundColor = UIColor.clearColor()
            //cell.sizeToFit()
            
            return cell
        }
       
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return cartList.count
        } else {
            return 5
        }
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerCell = OrderTableViewCustom.dequeueReusableCellWithIdentifier("headerCell") as! customHeaderCell
        
        switch (section) {
            case 0:
                if cartList.isEmpty == false {
                    headerCell.headerLabel.text = cartList[0].restaurant
                    headerCell.headerLabel.textColor = UIColor.whiteColor()
                } else {
                    headerCell.headerLabel.textColor = UIColor.clearColor()
                }
        case 1:
            headerCell.headerLabel.text = ""
            headerCell.headerLabel.textColor = UIColor.whiteColor()
        default:
            headerCell.headerLabel.text = ""
        }
       
        return headerCell
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40.0
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 66.0
        } else {
            return 40.0
        }
    }
    
    func tableViewHeight()  {
        //height = CGFloat(456.0)
        if cartList.isEmpty {
            height = CGFloat(0)
        } else {
            height = CGFloat(40) + CGFloat(66 * cartList.count) + CGFloat(240.00)
        }
        println(height)
    }
    
    func setUpCost() {
        var num = 0.0
        for item in cartList{
            num += Double(item.quantity) * Double(item.price)
        }
        self.Total = num
        self.Tax = Total! * 0.06
        self.deliveryCost = 5.00
        self.Tip = Total! * 0.05
        self.finalCost = Total! + Tax! + deliveryCost! + Tip!
        costNumbers = [Total!, deliveryCost!, Tax!, Tip!, finalCost!]
    }
    
    /*func setUpCustomView() {
        var Height = subView.frame.size.height
        var Width = subView.frame.size.width
        subView.frame = CGRectMake((view.frame.size.width/2.0) - (Width/2.0), view.frame.size.height/3.0 , Width, Height)
        subView.layer.cornerRadius = 5
        subView.layer.borderWidth = 1
        subView.customButton.tintColor = UIColor.clearColor()
        subView.customLabel.text = "Your Order has been placed"
        subView.customLabel.sizeToFit()
        self.view.addSubview(subView)
        
    }*/
    
    func getDate() {
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute | .CalendarUnitMonth | .CalendarUnitYear | .CalendarUnitDay, fromDate: date)
        let hour = components.hour
        var hourInt = Int(hour)
        var hourString = ""
        var timeOfDay = ""
        let minutes = components.minute
        if hour > 12 {
            hourInt = hourInt - 12
            hourString = "\(hourInt):\(minutes)"
            timeOfDay = hourString + "pm"
        } else {
            hourString = "\(hourInt):\(minutes)"
            timeOfDay = hourString + "am"
        }
        let month = components.month
        let year = components.year
        let day = components.day
        var officialDate = "\(month)" + "/" + "\(day)" + "/" + "\(year)"
        var officialDate2 = officialDate + " at " + timeOfDay
        finalDate = cartList[0].restaurant + " order on " + officialDate2
    }
    
   

}
