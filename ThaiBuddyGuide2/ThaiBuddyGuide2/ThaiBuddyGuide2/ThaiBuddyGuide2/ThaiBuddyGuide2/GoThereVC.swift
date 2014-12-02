//
//  GoThereVC.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 11/19/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit
import AVFoundation

class GoThereVC: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer?
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!,
        successfully flag: Bool) {
            println("Finished playing the song")

   }
    override func viewDidLoad() {
        super.viewDidLoad()
       

      
            let dispatchQueue =
            dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
            
            dispatch_async(dispatchQueue, {[weak self] in
                let mainBundle = NSBundle.mainBundle()
                
                /* Find the location of our file to feed to the audio player */
                let filePath = mainBundle.pathForResource("testfordirectionaduio", ofType:"mp3")
                
                if let path = filePath{
                    let fileData = NSData(contentsOfFile: path)
                    
                    var error:NSError?
                    
                    /* Start the audio player */
                    self!.audioPlayer = AVAudioPlayer(data: fileData, error: &error)
                    
                    /* Did we get an instance of AVAudioPlayer? */
                    if let player = self!.audioPlayer{
                        /* Set the delegate and start playing */
                        player.delegate = self
                        if player.prepareToPlay() && player.play(){
                            /* Successfully started playing */
                        } else {
                            /* Failed to play */
                        }
                    } else {
                        /* Failed to instantiate AVAudioPlayer */
                    }
                }
                
            })
            
        }
            
        }
        // Do any additional setup after loading the view.



    
// file name  testfordirectionaduio
            
            
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


