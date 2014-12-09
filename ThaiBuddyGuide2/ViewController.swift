//
//  ViewController.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/18/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var imageView: UIImageView!
    
    //newsidebar vars
    var sideBar:SideBar = SideBar()
    var model:SideBarDataModel = SideBarDataModel()
    
    
   // @IBAction func toggleSideMenu(sender: AnyObject) {
      //  toggleSideMenuView()
    //}
    

    
    
    var r = "restaurants"
    var s = "slights"
    var shop = "shopping"
    var m =  "massage"
    var n = "nightlife"
    //test
   //  var saveItemObj:SavedItemModel = SavedItemModel()
    //test save item info

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideBar = SideBar(sourceView: self.view, menuItems: self.model.data)
      //  sideBar.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
 
    
    
    @IBAction func goToViewControler1(sender: AnyObject) {
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
      
        
        if (segue.identifier == "restaurantSeque"){
            var restaurantVC: ItemsViewController2 = segue.destinationViewController as ItemsViewController2
            restaurantVC.jsonFileString = r
        }
        
        if (segue.identifier == "slightSeque"){
            var restaurantVC: ItemsViewController2 = segue.destinationViewController as ItemsViewController2
            restaurantVC.jsonFileString = s
        }
        
        if (segue.identifier == "shoppingSeque"){
            var restaurantVC: ItemsViewController2 = segue.destinationViewController as ItemsViewController2
            restaurantVC.jsonFileString = shop
        }
        if (segue.identifier == "massageSeque"){
            var restaurantVC: ItemsViewController2 = segue.destinationViewController as ItemsViewController2
            restaurantVC.jsonFileString = m
        }
        if (segue.identifier == "nightSeque"){
            var restaurantVC: ItemsViewController2 = segue.destinationViewController as ItemsViewController2
            restaurantVC.jsonFileString = n
        }
        if (segue.identifier == "saveitemseuq"){
            var restaurantVC: SavedItemVC = segue.destinationViewController as SavedItemVC
            
        }
      
       

    
}
}