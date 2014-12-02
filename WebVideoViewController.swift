//
//  WebVideoViewController.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/24/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit

class WebVideoViewController: UIViewController {
    
    //embed setting custom size 250 x 188
 //  var URLPathGoThere = "http://www.youtube.com/embed/Rva9ylPHi2w?rel=0&amp;controls=0&amp;showinfo=0"
    
  // var URLPathWhileThere = "http:///www.youtube.com/embed/nxM-rac7vb4?rel=0&amp;controls=0&amp;showinfo=0"
    
    var URLPathGoThere : String = ""
    
    var URLPathWhileThere : String = ""

    
    @IBAction func backButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true,completion: nil)
        
    }
    
   
    
    
    
    @IBOutlet weak var WebView: UIWebView!

    @IBOutlet weak var WebView2: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        println("inwebview"+URLPathGoThere)
        println(URLPathWhileThere)
      

        loadAddressURL()
        // Do any additional setup after loading the view.
    }

     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func loadAddressURL() {
        let requestURL = NSURL(string:URLPathGoThere)
        let requestURL2 = NSURL(string:URLPathWhileThere)

        let request = NSURLRequest(URL: requestURL);
        let request2 = NSURLRequest(URL: requestURL2);
        WebView.loadRequest(request)
        WebView2.loadRequest(request2)
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
