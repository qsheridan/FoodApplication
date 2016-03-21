//
//  ProfileTableTableViewController.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/15/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import UIKit

class ProfileTableTableViewController: UITableViewController {
    
    var profileList : [String] = ["Order History", "Favorites", "Account Information"]
    var reuseIdentifierList : [String] = ["OrderHistoryID","FavoritesID","CurrentID"]

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
    }


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return self.profileList.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = reuseIdentifierList[indexPath.row]
        let cell : UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath) as! UITableViewCell
        let item = self.profileList[indexPath.row]
        cell.textLabel!.text = item
        cell.backgroundColor = UIColor.clearColor()
        cell.textLabel!.textColor = UIColor.whiteColor()
        return cell
        
    }


}
