//
//  MyMenuTableViewController.swift
//  SwiftSideMenu
//
//  Created by Evgeny Nazarov on 29.09.14.
//  Copyright (c) 2014 Evgeny Nazarov. All rights reserved.
//

import UIKit

class MyMenuTableViewController: UITableViewController {
    
    //hard coded sidebar menu items array 
    var sideBarMenuArray: [String] = ["Home", "Travel Tips", "Safety","Shopping Tips","Beware Scams!", "Useful Phrases", "Ask Me", "FeedBack","Restore Purchase"]
    
    var selectedMenuItem : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
                //
        // Customize apperance of table view
        tableView.contentInset = UIEdgeInsetsMake(64.0, 0, 0, 0) //
        tableView.separatorStyle = .None
        tableView.backgroundColor = UIColor.clearColor()
        tableView.scrollsToTop = false
        
        // Preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
        
        tableView.selectRowAtIndexPath(NSIndexPath(forRow: selectedMenuItem, inSection: 0), animated: false, scrollPosition: .Middle)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
         return self.sideBarMenuArray.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("CELL") as? UITableViewCell
        
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "CELL")
            cell!.backgroundColor = UIColor.clearColor()
            cell!.textLabel?.textColor = UIColor.darkGrayColor()
            let selectedBackgroundView = UIView(frame: CGRectMake(0, 0, cell!.frame.size.width, cell!.frame.size.height))
            selectedBackgroundView.backgroundColor = UIColor.grayColor().colorWithAlphaComponent(0.2)
            cell!.selectedBackgroundView = selectedBackgroundView
        }
        
        
        //cell!.textLabel?.text = "View #\(indexPath.row+1)"
        
        // new code
      cell!.textLabel?.text = self.sideBarMenuArray[indexPath.row]
        
      
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50.0
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        println("did select row: \(indexPath.row)")
        
        if (indexPath.row == selectedMenuItem) {
            return
        }
       selectedMenuItem = indexPath.row
        
       
        
        //Present new view controller
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main",bundle: nil)
        var destViewController : UIViewController = UIViewController()
        var detailedViewController: ItemsViewController = ItemsViewController()
    
        switch (indexPath.row) {
        case 0:
            // destViewController = mainStoryboard.instantiateViewControllerWithIdentifier("ViewController1") as UIViewController
             destViewController = mainStoryboard.instantiateViewControllerWithIdentifier("ViewController1") as UIViewController
            
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
      sideMenuController()?.setContentViewController(destViewController)
   //  sideMenuController()?.setContentViewController(detailedViewController)
    }
    


    
    
    
}
