//
//  OrderHistoryViewController.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/23/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import UIKit

class OrderHistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var orderTableViewCustom2: UITableView!
    
    var cart: [Food]?
    
    var costArray: [String] = ["Total", "Delivery Cost", "Tip", "Tax", "Final Cost"]
    var costNumbers: [Double] = []
    var height : CGFloat?
    var num : Int = 0
    var Total: Double?
    var deliveryCost: Double?
    var Tip: Double?
    var Tax: Double?
    var finalCost: Double?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "red background2.png")!)
        orderTableViewCustom2.delegate = self
        orderTableViewCustom2.dataSource = self
        orderTableViewCustom2.backgroundColor = UIColor.clearColor()
        self.orderTableViewCustom2.reloadData()
    }
    
    override func viewWillAppear(animated: Bool) {
        self.title = ""
        tableViewHeight()
        orderTableViewCustom2.frame = CGRectMake(orderTableViewCustom2.frame.origin.x, orderTableViewCustom2.frame.origin.y, CGFloat(320) , height!)
        self.orderTableViewCustom2.reloadData()
        setUpCost()
        super.viewWillAppear(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return cart!.count
        } else {
            return 5
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        switch (indexPath.section) {
            
        case 0:
            
            let cell : CustomCell = orderTableViewCustom2.dequeueReusableCellWithIdentifier("customCell2", forIndexPath: indexPath) as! CustomCell
            let num = indexPath.row
            cell.customName2!.text = cart![num].name
            cell.customName2!.sizeToFit()
            cell.customName2!.textColor = UIColor.whiteColor()
            cell.customPrice2!.text = "$" + String(format: "%.2f", cart![num].price)
            cell.customPrice2!.textColor = UIColor.whiteColor()
            cell.customPrice2!.sizeToFit()
            cell.customQuantity2!.text = String(cart![num].quantity)
            cell.customQuantity2!.textColor = UIColor.whiteColor()
            cell.backgroundColor = UIColor.clearColor()
            
            return cell
            
        default :
            
            let cell : ExpenseCell = orderTableViewCustom2.dequeueReusableCellWithIdentifier("ExpenseCell2", forIndexPath: indexPath) as! ExpenseCell
            cell.expenseLabel2!.text = costArray[indexPath.row]
            cell.expenseLabel2!.textColor = UIColor.whiteColor()
            var double : Double = costNumbers[indexPath.row]
            cell.costLabel2!.text = "$" + String(format: "%.2f", double)
            cell.costLabel2!.sizeToFit()
            cell.costLabel2!.textColor = UIColor.whiteColor()
            cell.backgroundColor = UIColor.clearColor()
            
            return cell
        }
        
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerCell = orderTableViewCustom2.dequeueReusableCellWithIdentifier("customHeader2") as! customHeaderCell
        
        switch (section) {
        case 0:
            if cart!.isEmpty == false {
                headerCell.headerLabel2.text = cart![0].restaurant
                headerCell.headerLabel2.textColor = UIColor.whiteColor()
            } else {
                headerCell.headerLabel2.textColor = UIColor.clearColor()
            }
        case 1:
            headerCell.headerLabel2.text = ""
            headerCell.headerLabel2.textColor = UIColor.whiteColor()
        default:
            headerCell.headerLabel2.text = ""
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
        if cart!.isEmpty {
            height = CGFloat(0)
        } else {
            height = CGFloat(40) + CGFloat(66 * cart!.count) + CGFloat(240.00)
        }
        println(height)
    }
    
    func setUpCost() {
        var num = 0.0
        for item in cart!{
            num += Double(item.quantity) * Double(item.price)
        }
        self.Total = num
        self.Tax = Total! * 0.06
        self.deliveryCost = 5.00
        self.Tip = Total! * 0.05
        self.finalCost = Total! + Tax! + deliveryCost! + Tip!
        costNumbers = [Total!, deliveryCost!, Tax!, Tip!, finalCost!]
    }

// Yo Yo Yo, pretty fucked up//
    
}
