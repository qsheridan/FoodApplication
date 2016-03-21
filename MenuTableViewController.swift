//
//  MenuTableViewController.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/4/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {

    var name : String?
    var array : [Food] = []
    var arrayOfFood : [Food] = []
    var call : Call?
    var currentFood : Food?
    var svc : FoodDescriptionViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = name! + " Menu"
        self.array = Call().order()
        self.arrayOfFood = sortByRestaurant(array, name: name!)
        self.tableView.rowHeight = 70
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "red background2.png"))
        self.tableView.reloadData()
        
        var tblView =  UIView(frame: CGRectZero)
        tableView.tableFooterView = tblView
        tableView.tableFooterView!.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        svc = segue.destinationViewController as? FoodDescriptionViewController
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexpath : NSIndexPath) {
        let cell : Food = self.arrayOfFood[indexpath.row]
        svc!.foodItem = cell
    }


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayOfFood.count
    }

  
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        let item = self.arrayOfFood[indexPath.row]
        cell.textLabel!.text = item.name
        cell.detailTextLabel!.text = "$" + String(format: "%.2f", item.price)
        
        cell.backgroundColor = UIColor.clearColor()
        
        cell.textLabel!.textColor = UIColor.whiteColor()
        cell.detailTextLabel!.textColor = UIColor.whiteColor()
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        return cell
    }
    
    func sortByRestaurant(list : [Food], name : String) -> [Food] {
        var foodlist : [Food] = []
        for item in list {
            if item.restaurant == name {
                foodlist.append(item)
            }
        }
        return foodlist
    }

}
