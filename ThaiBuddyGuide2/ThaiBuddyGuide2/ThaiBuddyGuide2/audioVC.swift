//
//  audioVC.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/19/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit
import AVFoundation

class audioVC: UIViewController, AVAudioPlayerDelegate{
 
    
    var audioPlayer: AVAudioPlayer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var SoundUrl:NSURL? = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("testfordirectionaduio", ofType: "mp3")!)
        if (SoundUrl != nil) {
            self.audioPlayer = AVAudioPlayer(contentsOfURL: SoundUrl!, error: nil)
        }

       
    }
    @IBAction func playButton(sender: AnyObject) {
        if (self.audioPlayer != nil) {
            self.audioPlayer?.play()
        }
        
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
