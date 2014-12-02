//
//  MapViewController.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/19/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit
import MapKit
import AVFoundation




class MapViewController: UIViewController, MKMapViewDelegate {
    
    var audioPlayer: AVAudioPlayer?

//variable to get data
     var itemNamefromDetail: String = ""
    var lat = Double()
    var lon = Double()
    
    @IBAction func backButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true,completion: nil)
        
    }
    
    
    

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var mappy: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // test data was sent
        
        println("var inside of mapview+ \(itemNamefromDetail)")
        
        //get text for label
        nameLabel.text = itemNamefromDetail
        
        
        // 1. pick a point
    // var lat = 13.7334218
    // var lon = 100.6922059
        
       
            
            //13.7334218,100.6922059
        
        // 2. setup point
        var span : MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        var loc = CLLocationCoordinate2DMake(lat, lon)
        
        // 3. create a region for zooming (we will zoom to this)
        var region : MKCoordinateRegion = MKCoordinateRegionMake(loc, span)
        
        var annotation = MKPointAnnotation()
        annotation.coordinate = loc
        annotation.title = "Go Huskers!"
        annotation.subtitle = "Go Huskers!"
        
        // 5. update zoom and add marker
        mappy.setRegion(region, animated: true)
        mappy.addAnnotation(annotation)
        
        // Audio of directions
            var SoundUrl:NSURL? = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource((itemNamefromDetail), ofType: "mp3")!)
            if (SoundUrl != nil) {
                self.audioPlayer = AVAudioPlayer(contentsOfURL: SoundUrl!, error: nil)
            }

       
    }

//press for directions button
    @IBAction func callSound(sender: AnyObject) {
       
        if (self.audioPlayer != nil) {
            self.audioPlayer?.play()
        }

    }
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
}
