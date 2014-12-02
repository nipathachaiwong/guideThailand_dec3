//
//  AudioButtonVC.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/19/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit
import AVFoundation

class AudioButtonVC: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer: AVAudioPlayer?    
    
    



    
    /*
    
    var player: AVAudioPlayer?
    
    
  
   
    func initBeep(){
        let filePath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("testfordirectionaduio", ofType: "mp3")!)

       // beepPlayer = AVAudioPlayer(contentsOfURL: beepSound, error: nil)
        let player = self.player
        player?.delegate = self
       
        player?.prepareToPlay()
        player?.play()
        
        
    }
    
    func playBeepSound(){
       player?.play()
    }
    
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        
        initBeep()
        
        
    }
    
   
    @IBAction func playButton(sender: AnyObject) {
        playBeepSound()
         println("got here");
    }
   

    
     func viewDidLoad() {
        super.viewDidLoad()
        
    

        // Do any additional setup after loading the view.
    }

     func didReceiveMemoryWarning() {
       
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



