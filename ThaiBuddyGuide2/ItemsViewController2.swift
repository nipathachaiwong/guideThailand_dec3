//
//  ItemsViewController.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/18/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit

class ItemsViewController2: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    //get json fileNMW
    //var jsonFileString = "restaurants"
    var jsonFileString: String = ""
    
    //let getJson:GetJsonUrl = GetJsonUrl()
    
    //
    
    @IBOutlet weak var myTableView: UITableView!
    let model:ItemModel = ItemModel()
    var items:[Item2] = [Item2]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      //  self.getJsonFileName()
       println(jsonFileString)
        
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
        detailedViewController.urlGetThereVidString = item.urlGetThereVid
        detailedViewController.urlAtLocationVidString = item.urlAtLocationVid
        
        detailedViewController.latCord = item.lat
        detailedViewController.longCord = item.long
        
        
        self.presentViewController(detailedViewController, animated: true, completion: nil)
        
    }
    // TO DO
    //   1. Arrayofitemslike saved to nsuserdefaults-
    
 
    
}


