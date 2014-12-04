//
//  SavedItemModel.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 12/4/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit

class SavedItemModel: NSObject {
    
    func saveItemToDefaults(){
        
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        var jo : [NSObject : AnyObject] = [
            "a" : "1.0",
            "b" : "2.0"
        ]
        let akey = "aKey"
        userDefaults.setObject(jo, forKey: akey)
        var isOk = userDefaults.synchronize()
        var data0 = userDefaults.dictionaryForKey(akey)
        println(data0)
    }
    
   
}
