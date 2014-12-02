//
//  MapViewController.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/19/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mappy: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1. pick a point
        var lat = 40.8206
        var lon = -96.7056
        
        // 2. setup point
        var span : MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        var loc = CLLocationCoordinate2DMake(lat, lon)
        
        // 3. create a region for zooming (we will zoom to this)
        var region : MKCoordinateRegion = MKCoordinateRegionMake(loc, span)
        
        var annotation = MKPointAnnotation()
        annotation.coordinate = loc
        annotation.title = "Memorial Stadium"
        annotation.subtitle = "Go Huskers!"
        
        // 5. update zoom and add marker
        mappy.setRegion(region, animated: true)
        mappy.addAnnotation(annotation)
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
