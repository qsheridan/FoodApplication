
//
//  OrderHistoryTableViewController.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/23/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import UIKit

class OrderHistoryTableViewController: UITableViewController {
    
    var svc : OrderHistoryViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.rowHeight = 60
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "red background2.png"))
        
        self.title = "Profile"
        self.tableView.reloadData()
        
        var tblView =  UIView(frame: CGRectZero)
        tableView.tableFooterView = tblView
        tableView.tableFooterView!.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        self.tableView.reloadData()

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        self.tableView.reloadData()

    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartTimeHistory.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("OrderHistoryID", forIndexPath: indexPath) as! UITableViewCell
        let item = cartTimeHistory[indexPath.row]
        cell.textLabel!.text = item
        cell.backgroundColor = UIColor.clearColor()
        cell.textLabel!.textColor = UIColor.whiteColor()
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        svc = segue.destinationViewController as? OrderHistoryViewController
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexpath : NSIndexPath) {
        let time = cartTimeHistory[indexpath.row]
        let order : [Food] = cartHistory[time]!
        svc!.cart = order
    }
    
   


   



}
