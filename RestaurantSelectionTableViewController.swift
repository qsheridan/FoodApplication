//
//  RestaurantSelectionTableViewController.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/3/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import UIKit

class RestaurantSelectionTableViewController: UITableViewController {

    var restaurants = Call().restaurants()
    var svc : RestaurantTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.rowHeight = 70
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "red background2.png"))
        
        self.title = "Restaurants"
        self.tableView.reloadData()
        
        var tblView =  UIView(frame: CGRectZero)
        tableView.tableFooterView = tblView
        tableView.tableFooterView!.hidden = true
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        svc = segue.destinationViewController as? RestaurantTableViewController
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.restaurants.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        let item = self.restaurants[indexPath.row]
        cell.textLabel!.text = item.name
        cell.detailTextLabel!.text = item.distance
        loadImage(item.url!, Cell: cell)
        
        cell.backgroundColor = UIColor.clearColor()
        
        cell.textLabel!.textColor = UIColor.whiteColor()
        cell.detailTextLabel!.textColor = UIColor.whiteColor()
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        return cell
    }
    
    
    func loadImage(url : String, Cell : UITableViewCell) {
        var imageUrl: NSURL = NSURL(string : url)!
        let request: NSURLRequest = NSURLRequest(URL: imageUrl)
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue(), completionHandler: {(response : NSURLResponse!, data: NSData!, error : NSError!) -> Void in
            if error == nil {
                Cell.imageView?.image = UIImage(data: data)
            }
        })
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexpath : NSIndexPath) {
        let cell : Restaurant = self.restaurants[indexpath.row]
        svc!.rest = cell
    }

}
