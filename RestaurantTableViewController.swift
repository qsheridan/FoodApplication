//
//  RestaurantTableViewController.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/3/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {

    var rest: Restaurant?
    
    var list = [["Menu","Delicious pizzas and more"], ["Twitter Reviews", "Reviews from the Twittersphere"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.rowHeight = 70
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "red background2.png"))
        
        self.title = rest!.name
        self.tableView.reloadData()
        
        var tblView =  UIView(frame: CGRectZero)
        tableView.tableFooterView = tblView
        tableView.tableFooterView!.hidden = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var seg = segue.destinationViewController as? MenuTableViewController
        seg!.name = rest!.name
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var Cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
    
        let item = self.list[indexPath.row]
        
        Cell.textLabel!.text = item[0]
        Cell.detailTextLabel!.text = item[1]
        Cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        Cell.backgroundColor  = UIColor.clearColor()
        
        Cell.textLabel?.textColor = UIColor.whiteColor()
        Cell.detailTextLabel?.textColor = UIColor.whiteColor()
        
        return Cell
        
    }
 
   
  
}
