//
//  DetailViewController.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/18/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit



class DetailViewController2: UIViewController{

    

    @IBOutlet weak var navigationBar: UINavigationBar!
    
    @IBOutlet weak var myDetailedImageView: UIImageView!
   
    
    @IBOutlet weak var itemLabel: UILabel!
    
    //new IBOutlets
    @IBOutlet weak var nameInThaiLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    //scrollview
    @IBOutlet weak var scrollView: UIScrollView!
    

    @IBAction func backButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true,completion: nil)

    }
    
    
    var itemString: String?
    var myDetailedImageName: String?
    var desciptionDetail : String?
    
    var phoneString: String?
    var nameInThaiString: String?
    
    var urlGetThereVidString: String?
    var urlAtLocationVidString: String?
    
    var latCord: Double?
    var longCord: Double?
    
    @IBOutlet weak var desciptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
     
    
        
        
        self.itemLabel.text = itemString
       self.myDetailedImageView.image = UIImage(named: myDetailedImageName!)
        self.desciptionLabel.text = desciptionDetail
        
        //new labels text assign here
        self.phoneLabel.text = phoneString
        self.nameInThaiLabel.text = nameInThaiString
        
        // Do any additional setup after loading the view.
        
        //scroll
         scrollView.contentSize = CGSize(width: CGRectGetWidth(view.bounds), height: CGRectGetHeight(view.bounds) * 1.5)
        scrollView.bounces = false
        
        println(itemString)
        println(phoneString)
        println(latCord)
        println(longCord)
        println("got here"+itemString!)
        println(urlGetThereVidString)
        println("in detailvc"+urlAtLocationVidString!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    //makes the view disappear and go back
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent)
    {
        
      //  self.dismissViewControllerAnimated(true,completion: nil)
    }

    @IBAction func goTherebutton(sender: AnyObject) {
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       var nextVC: MapViewController = segue.destinationViewController as MapViewController
        
        nextVC.itemNamefromDetail = itemString!
        
        if (segue.identifier == "goToSque"){
            var mapVC: MapViewController = segue.destinationViewController as MapViewController
            
            mapVC.itemNamefromDetail = itemString!
            mapVC.lat = latCord!
            mapVC.lon = longCord!
        }
        
        if (segue.identifier == "MorePhotoSeque"){
            var morePhotosObject: MorePhotosViewController = segue.destinationViewController as MorePhotosViewController
            
            morePhotosObject.nameStringForImages = itemString!
            
        }
       //add new seque to webvideos VC
        if (segue.identifier == "SeeVideoSeque"){
            var WebVidepViewVCObject: WebVideoViewController = segue.destinationViewController as WebVideoViewController
            
           WebVidepViewVCObject.URLPathGoThere = urlGetThereVidString!
            WebVidepViewVCObject.URLPathWhileThere = urlAtLocationVidString!
            
            
            
            
        }
        
        if (segue.identifier == "testseq"){
            var ViewController5obj: UIViewController = segue.destinationViewController as UIViewController
            
            
            
                
           
            
            
            
            
        }
        
    }

    @IBAction func saveItemButton(sender: AnyObject) {
        
        var userDefaults:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        var itemList:NSMutableArray? = userDefaults.objectForKey("itemList") as? NSMutableArray
        
        var dataSet:NSMutableDictionary = NSMutableDictionary()
        dataSet.setObject(titleTextField.text, forKey: "itemTitel")
        dataSet.setObject(notesTextView.text, forKey: "itemNote")
        
        if (itemList){ // data already available
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
        
        self.navigationController.popToRootViewControllerAnimated(true)
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
