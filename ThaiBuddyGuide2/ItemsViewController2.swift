//
//  ItemsViewController.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/18/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit

class ItemsViewController2: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
 
    var jsonFileString: String = ""
    
  

    
    @IBOutlet weak var myTableView: UITableView!
    let model:ItemModel = ItemModel()
    var items:[Item2] = [Item2]()
    
    //newsidebar vars
    var sideBar:SideBar = SideBar()
    var modelSide:SideBarDataModel = SideBarDataModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        sideBar = SideBar(sourceView: self.view, menuItems: self.modelSide.data)
        
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
    
        
        
          self.presentViewController(detailedViewController, animated: true, completion: nil)
        
      
        
    }
   

    
}


