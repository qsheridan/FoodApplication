//
//  FavoritesTableViewController.swift
//  FoodApplication
//
//  Created by Quinn Sheridan on 8/26/15.
//  Copyright (c) 2015 Quinn Sheridan. All rights reserved.
//

import UIKit

class FavoritesTableViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    var restaurantList : [String] = []
    var restaurantNum = [String : Int]()
    var restaurantFood : [Food] = []
    
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "red background2.png")!)
        self.title = "Favorites"
        tableView.dataSource = self
        tableView.delegate = self
        self.tableView.reloadData()
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData()
        setUpStarList()
        var tblView =  UIView(frame: CGRectZero)
        tableView.tableFooterView = tblView
        tableView.tableFooterView!.hidden = true
        super.viewWillAppear(true)
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerCell = tableView.dequeueReusableCellWithIdentifier("restaurantHeaderCell") as! customHeaderCell
        
        headerCell.headerLabel3.text = restaurantList[section]
        headerCell.headerLabel3.textColor = UIColor.whiteColor()
        
        return headerCell
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40.0
    }


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        if starList.count == 0 {
            return 0
        } else {
            return restaurantList.count
        }
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var restaurantName2 = restaurantList[section]
        var numberOfRows = 0
        for item in starList {
            if item.restaurant == restaurantName2 {
                numberOfRows += 1
            }
        }
        return numberOfRows
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var restaurantName = restaurantList[indexPath.section]
        restaurantFood = []
        for item in starList {
            if item.restaurant == restaurantName {
                restaurantFood.append(item)
            }
        }
        let cell = tableView.dequeueReusableCellWithIdentifier("favoriteCell", forIndexPath: indexPath) as! UITableViewCell
        cell.detailTextLabel?.text = "$" + String(format: "%.2f", restaurantFood[indexPath.row].price)
        cell.detailTextLabel?.textColor = UIColor.whiteColor()
        cell.textLabel?.text = starList[indexPath.row].name
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.backgroundColor = UIColor.clearColor()

        return cell
    }
    
    func setUpStarList() {
        var Restaurant : String = ""
        for item in starList {
            Restaurant = item.restaurant
            if contains(restaurantList, Restaurant) {
            } else {
                restaurantList.append(Restaurant)
            }
            
        }
    }
    
    

    

   

    



}
