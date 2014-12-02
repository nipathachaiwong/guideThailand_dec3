//
//  DetailViewController.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/18/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var myDetailedImageView: UIImageView!
   
    
    @IBOutlet weak var itemLabel: UILabel!
    
    var itemString: String?
    var myDetailedImageName: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.itemLabel.text = itemString
        self.myDetailedImageView.image = UIImage(named: myDetailedImageName!)
        
        //read nsuserdefault out of scope for use in the saveitemtableview
        var defaults = NSUserDefaults.standardUserDefaults()
          var key = "keySave"

        if let testArray : AnyObject? = defaults.objectForKey(key) {
            var readArray : [NSString] = testArray! as [NSString]
            println(readArray)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent)
    {
        self.dismissViewControllerAnimated(true,completion: nil)
    }

 

}
