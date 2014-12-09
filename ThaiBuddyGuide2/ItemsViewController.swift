//
//  ItemsViewController.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/18/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit

class ItemsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    
    
   var items:[Item2] = [Item2]()
    let model:SideItemModel = SideItemModel()
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.setUpItems()
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func setUpItems()
    {
        
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
    
    
}


