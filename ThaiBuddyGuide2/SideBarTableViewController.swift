//
//  SideBarTableViewController.swift
//  BlurrySideBar
//
//  Created by Training on 01/09/14.
//  Copyright (c) 2014 Training. All rights reserved.
//

import UIKit


//protocol SideBarTableViewControllerDelegate{
   // func sideBarControlDidSelectRow(indexPath:NSIndexPath)
//}

class SideBarTableViewController: UITableViewController {

   // var delegate:SideBarTableViewControllerDelegate?
    var tableData:Array<String> = []
    
    var selectedMenuItem : Int = 0    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        
        return 1
    }

    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {

        return tableData.count
    }

   
     override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
     {
        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier("Cell") as? UITableViewCell

        if cell == nil{
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
            // Configure the cell...
            
            cell!.backgroundColor = UIColor.clearColor()
            cell!.textLabel?.textColor = UIColor.darkTextColor()
            
            let selectedView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: cell!.frame.size.width, height: cell!.frame.size.height))
            selectedView.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.3)
            
            cell!.selectedBackgroundView = selectedView
        }
        

        cell!.textLabel?.text = tableData[indexPath.row]
        
        

        return cell!
    }
    
    
    override func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 45.0
    }
    
   // override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
      //  delegate?.sideBarControlDidSelectRow(indexPath)
    //}

    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        println("did select row: \(indexPath.row)")
        
        if (indexPath.row == selectedMenuItem) {
            return
        }
        selectedMenuItem = indexPath.row
        
        
        
        //Present new view controller
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main",bundle: nil)
        var homeViewController : ViewController = ViewController()
        var detailedViewController: ItemsViewController = ItemsViewController()
        
        switch (indexPath.row) {
        case 0:
            homeViewController = mainStoryboard.instantiateViewControllerWithIdentifier("ViewController1") as ViewController
           // self.presentViewController(homeViewController, animated: true, completion: nil)
            
            break
            
            
        case 1:
            // destViewController = mainStoryboard.instantiateViewControllerWithIdentifier("ViewController2") as UIViewController
            detailedViewController = mainStoryboard.instantiateViewControllerWithIdentifier("ViewController2") as ItemsViewController
            detailedViewController.jsonFileString = "Item2Data"
            
            
            
            
            break
        case 2:
            detailedViewController = mainStoryboard.instantiateViewControllerWithIdentifier("ViewController2") as ItemsViewController
            detailedViewController.jsonFileString = "3data"
            break
            
        default:
            detailedViewController = mainStoryboard.instantiateViewControllerWithIdentifier("ViewController2") as ItemsViewController
            detailedViewController.jsonFileString = "Item2Data"
            
            break
        }
        
        self.presentViewController(detailedViewController, animated: true, completion: nil)
        
      self.presentViewController(homeViewController, animated: true, completion: nil)
        
        //sideMenuController()?.setContentViewController(destViewController)
        //  sideMenuController()?.setContentViewController(detailedViewController)
    }
    
    
    
    
    

}
