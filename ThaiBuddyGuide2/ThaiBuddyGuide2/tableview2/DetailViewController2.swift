//
//  DetailViewController.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/18/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit

class DetailViewController2: UIViewController {

    @IBOutlet weak var myDetailedImageView: UIImageView!
   
    
    @IBOutlet weak var itemLabel: UILabel!
    
    //scrollview
    @IBOutlet weak var scrollView: UIScrollView!
    
    var itemString : String?
    var myDetailedImageName: String?
    var desciptionString: String?

    
@IBOutlet weak var desciptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        self.itemLabel.text = itemString
        self.myDetailedImageView.image = UIImage(named: myDetailedImageName!)
        self.desciptionLabel.text = desciptionString
        
        desciptionLabel.sizeToFit()
        //desciptionLabel.textAlignment = NSTextAlignment.Left
     
        
        // Do any additional setup after loading the view.
        
        //scroll
         scrollView.contentSize = CGSize(width: desciptionLabel.frame.size.width, height: desciptionLabel.frame.size.height)
        scrollView.bounces = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent)
    {
     
        
        self.dismissViewControllerAnimated(true,completion: nil)
    }
    // button to goThere View

 
    @IBAction func goTherebutton(sender: AnyObject) {
    }
    
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //var nextVC: MapViewController = segue.destinationViewController as MapViewController
        
       // nextVC.itemNamefromDetail = itemString!
        
        if (segue.identifier == "goToSque"){
            var nextVC: MapViewController = segue.destinationViewController as MapViewController
            
            nextVC.itemNamefromDetail = itemString!
        }
        
        if (segue.identifier == "MorePhotoSeque"){
            var morePhotosObject: MorePhotosViewController = segue.destinationViewController as MorePhotosViewController
            
            morePhotosObject.namePassedfromDetailView = itemString!
            
            
        }
        
        }
    @IBAction func morePhotoButton(sender: AnyObject) {
    }
    }








    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


