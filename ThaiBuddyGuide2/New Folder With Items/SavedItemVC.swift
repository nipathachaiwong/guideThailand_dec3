//
//  SavedItemVC.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 12/4/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit

class SavedItemVC: UIViewController {

    
    let model:SavedItemModel = SavedItemModel()
    let modeltest:ItemModel = ItemModel()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.model.getItems()
        //self.modeltest.getItems()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
