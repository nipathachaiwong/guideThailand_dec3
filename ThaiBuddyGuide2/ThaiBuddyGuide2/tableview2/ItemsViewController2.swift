//
//  ItemsViewController.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/18/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit

class ItemsViewController2: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    var arrayOfItems : [Item2] = [Item2]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        
        var item1 = Item2(name: "name1for3rdvC ", imageName: "wat.jpeg", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scra, but also the leap into electronic typesetting, remaining essentially unchanged. It was ")
       
        
        var item2 = Item2(name: "temple2", imageName: "wat2.jpeg", description: "xt ever since the 1500s, when an unknown printer took a galley of type and nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wasLorem Ipsum is simply dummy text of the printing and typese")
        
        var item3 = Item2(name: "temple2", imageName: "wat2.jpeg", description: "xt ever since the 1500s, when an unknown printer took a galley of type and nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wasLorem Ipsum is simply dummy text of the printing and typese")

        
        var item4 = Item2(name: "temple2", imageName: "wat2.jpeg", description: "xt ever since the 1500s, when an unknown printer took a galley of type and nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wasLorem Ipsum is simply dummy text of the printing and typese")

        
        var item5 = Item2(name: "temple2", imageName: "wat2.jpeg", description: "xt ever since the 1500s, when an unknown printer took a galley of type and nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wasLorem Ipsum is simply dummy text of the printing and typese")

        
        
        var item6 = Item2(name: "temple2", imageName: "wat2.jpeg", description: "xt ever since the 1500s, when an unknown printer took a galley of type and nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wasLorem Ipsum is simply dummy text of the printing and typese")

        
        var item7 = Item2(name: "temple2", imageName: "wat2.jpeg", description: "xt ever since the 1500s, when an unknown printer took a galley of type and nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wasLorem Ipsum is simply dummy text of the printing and typese")

        
        var item8 = Item2(name: "temple2", imageName: "wat2.jpeg", description: "xt ever since the 1500s, when an unknown printer took a galley of type and nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five nown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five scrambled it to make a type specimen book. It has survived not only five text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wasLorem Ipsum is simply dummy text of the printing and typese")

        
        
        arrayOfItems.append(item1)
        arrayOfItems.append(item2)
        arrayOfItems.append(item3)
        arrayOfItems.append(item4)
        arrayOfItems.append(item5)
        arrayOfItems.append(item6)
        arrayOfItems.append(item7)
        arrayOfItems.append(item8)
        
        
        
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrayOfItems.count
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
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
        
        let item = arrayOfItems[indexPath.row]
        
        cell.setCell(item.name, imageName: item.imageName)
        
        return cell
        
        
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let item = arrayOfItems[indexPath.row]
        
        var detailedViewController: DetailViewController2 = self.storyboard?.instantiateViewControllerWithIdentifier("DetailViewController2") as DetailViewController2
        
        detailedViewController.itemString = item.name
        detailedViewController.myDetailedImageName = item.imageName
        detailedViewController.desciptionString = item.description
        
        self.presentViewController(detailedViewController, animated: true, completion: nil)
        
    }
    // TO DO
    //   1. Arrayofitemslike saved to nsuserdefaults-
    
    
}


