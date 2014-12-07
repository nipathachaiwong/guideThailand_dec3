//
//  ItemsViewController.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/18/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit

class ItemsViewController2: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    
    //test
    var toDoItems:NSMutableArray = NSMutableArray();
    
    //required init(coder aDecoder: NSCoder!) {
      //  super.init(coder: aDecoder)
   // }
    //get json fileNMW
    //var jsonFileString = "restaurants"
    var jsonFileString: String = ""
    
   //test arrayto save data
    var SavedItemModelInstance:SavedItemModel = SavedItemModel()
    
    
    //save as dict test

    
    @IBOutlet weak var myTableView: UITableView!
    let model:ItemModel = ItemModel()
    var items:[Item2] = [Item2]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      //  self.getJsonFileName()
      
        self.setUpItems()
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func setUpItems()
    {
      self.model.JsonfileName = self.jsonFileString
      self.items = self.model.getItems()
        
    }
    
    @IBAction func backButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true,completion: nil)
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return items.count
    }
    
   
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell: CustomCell2 = tableView.dequeueReusableCellWithIdentifier("cell2") as CustomCell2
        
        if indexPath.row % 2 == 0
        {
            cell.backgroundColor = UIColor.purpleColor()
        }
        else
        {
            cell.backgroundColor = UIColor.orangeColor()
        }
        
       let item = items[indexPath.row]
        
        cell.setCell(item.name, imageName: item.imageName)
        
        return cell
        
        
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       let item = items[indexPath.row]
        
        var detailedViewController: DetailViewController2 = self.storyboard?.instantiateViewControllerWithIdentifier("DetailViewController2") as DetailViewController2
        
            
        detailedViewController.itemString = item.name
        detailedViewController.myDetailedImageName = item.imageName
        detailedViewController.desciptionDetail = item.descriptiontext
        detailedViewController.nameInThaiString = item.nameInThai
        detailedViewController.phoneString = item.phone
        detailedViewController.hoursString = item.hours
        detailedViewController.urlGetThereVidString = item.urlGetThereVid
        detailedViewController.urlAtLocationVidString = item.urlAtLocationVid
        
        detailedViewController.latCord = item.lat
        detailedViewController.longCord = item.long
        
        
       
        
        //println(item)
        //println(indexPath.row)
        
        
        //test
        //dictionary to save data to defaults
        
       /*  working code but only create one item in array

        var arrayAsDictionary:NSDictionary =
        [
            "name":item.name,
            "nameInThai":item.nameInThai,
            "phone":item.phone,
            "hours":item.hours,
            "imageName":item.imageName,
            "category":item.category,
            "lat":item.lat,
            "long":item.long,
            "urlGetThereVid":item.urlGetThereVid,
            "urlAtLocationVid":item.urlAtLocationVid,
            "descriptionstring":item.descriptiontext
            
          
        ]
       
        
        var arrayforSaveData:[Item2] = [Item2]()
        arrayforSaveData.append(item)
       // var arrayOfItemsDictionary:NSMutableDictionary = [arrayforSaveData]
        println("contents of item added to array")
        
        NSUserDefaults.standardUserDefaults().setObject(arrayforSaveData, forKey: "array")
        NSUserDefaults.standardUserDefaults().synchronize()
        
    
        //  item +=  arrayAsDictionary
        println(arrayforSaveData)
        
        

        
       
      
     
            
            //print out data from nsuserdefaults
            println("this is included")
          
            //read
  
           
            println("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
           
        
        
        */
            
        //test 12 7

            var userDefaults:NSUserDefaults = NSUserDefaults.standardUserDefaults()
            
            var itemList:NSMutableArray? = userDefaults.objectForKey("itemList") as? NSMutableArray
            
            var dataSet:NSMutableDictionary = NSMutableDictionary()
            dataSet.setObject("test1", forKey: "itemTitle")
            dataSet.setObject("test2", forKey: "itemNote")
            
            if (itemList) != nil { // data already available
                var newMutableList:NSMutableArray = NSMutableArray();
                
                for dict:AnyObject in itemList!{
                   newMutableList.addObject(dict as NSDictionary)
                 
                }
                
                userDefaults.removeObjectForKey("itemList")
                newMutableList.addObject(dataSet)
                userDefaults.setObject(newMutableList, forKey: "itemList")
                
                
            }else{ // This is the first todo item in the list
                userDefaults.removeObjectForKey("itemList")
                itemList = NSMutableArray()
                itemList!.addObject(dataSet)
                userDefaults.setObject(itemList, forKey: "itemList")
            }
            
            userDefaults.synchronize()
        
            //print out data from nsuserdefaults
            println("this test")
            
            //read
          
            
            var itemListFromUserDefaults:NSMutableArray? = userDefaults.objectForKey("itemList") as? NSMutableArray
            
            if (itemListFromUserDefaults) != nil {
                toDoItems = itemListFromUserDefaults!
                
            }
            
             println(toDoItems )        //Note:
        //array1:NSDictionary = ["key1": "val1", "key2": "val2"]
    }
    // TO DO
    //   1. Arrayofitemslike saved to nsuserdefaults-
    

    
}


