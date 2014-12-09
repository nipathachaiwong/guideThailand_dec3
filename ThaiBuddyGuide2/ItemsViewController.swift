//
//  ItemsViewController.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/18/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit

class ItemsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    //newsidebar vars
    var sideBar:SideBar = SideBar()
    var modelSide:SideBarDataModel = SideBarDataModel()
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    var jsonFileString: String = ""
    //test sidebar

    
    @IBAction func SideTable2HomeButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true,completion: nil)    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        if (segue.identifier == "SideMenuTable2HomeSeque"){
            var homeVC: ViewController = segue.destinationViewController as ViewController
          
        }
        
        
        
        
    }


    
   var items:[Item2] = [Item2]()
    let model:SideItemModel = SideItemModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       sideBar = SideBar(sourceView: self.view, menuItems: self.modelSide.data)
        
        
        self.setUpItems()
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func setUpItems()
    {
        self.model.JsonfileName = self.jsonFileString
        self.items = self.model.getItems()
        
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return items.count
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell: CustomCell = tableView.dequeueReusableCellWithIdentifier("cellSide") as CustomCell
        
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
        
        var detailedViewController: SideDetailViewController = self.storyboard?.instantiateViewControllerWithIdentifier("SideDetailViewController") as SideDetailViewController
        
        
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


