//
//  ViewController.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/18/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var r = "restaurants"
    var s = "slights"
    var shop = "shopping"
    var m =  "massage"
    var n = "nightlife"
    
    //test save item info
    @IBAction func saveItemInfoButton(sender: AnyObject) {
       //working code
        /*
        let def = NSUserDefaults.standardUserDefaults()

        
          var defaults = NSUserDefaults.standardUserDefaults()
        
        var dict : NSDictionary = ["key":"value","key2":"value2","key3":"value2",]
        var array2: NSArray = dict.allValues // Create a dictionary and assign that to this array
        
        
        defaults.setObject(array2,forKey : "key")
        
        var myarray : NSArray = def.objectForKey("key") as NSArray
        println(myarray)
*/
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        var jo : [NSObject : AnyObject] = [
            "a" : "1.0",
            "b" : "2.0"
        ]
        let akey = "aKey"
        userDefaults.setObject(jo, forKey: akey)
        var isOk = userDefaults.synchronize()
        var data0 = userDefaults.dictionaryForKey(akey)
        println(data0)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
      
    
//   @IBAction func toggleSideMenu(sender: AnyObject) {
   //     toggleSideMenuView()
   // }
    
}
}