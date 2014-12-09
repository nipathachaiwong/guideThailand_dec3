//
//  SavedItemModel.swift
//  ThaiBuddyGuide2
//
//  Created by Thai Buddy on 12/4/14.
//  Copyright (c) 2014 Thai Buddy Guides. All rights reserved.
//

import UIKit

class SavedItemModel: NSObject {
    
  
    //var dictionary = Dictionary<String, AnyObject>()
    var dictionary: NSDictionary = NSDictionary()
    
    //func getItems() -> [Item2] {
    
    func getItems()  {
        
        // Array of question objects
        var items:[Item2] = [Item2]()
        
        //test load defaults
        var defaults : NSUserDefaults = NSUserDefaults.standardUserDefaults()
        if (defaults.dictionaryForKey("savedItemTest") != nil) {
            var dictionaryFromDefaults : NSDictionary = defaults.dictionaryForKey("savedItemTest")!
           self.dictionary = dictionaryFromDefaults as Dictionary
            println(dictionary)
            println("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
        }
        
       
        // Get Json array of dictionaries
        //remote code below currenrlt commented out
        //let dictionary = ["myKey" : NSNumber(int: 12)] as NSDictionary
                //NSUserDefaults.standardUserDefaults().dictionaryForKey("myDict")
        // let jsonObjects:[NSDictionary] = self.getRemoteJsonFile()
        
        //locale
        
        
        /*
        
        let jsonObjects:[NSDictionary] = dictionary[index]
        
        // Loop through each dictionary and assign values to our question objs
        var index:Int
        for index = 0; index < jsonObjects.count; index++ {
            
            // Current JSON dict
            let jsonDictionary:NSDictionary = jsonObjects[index]
            
            // Create a question obj
            var q:Item2 = Item2()
            
            // Assign the values of each key value pair to the question object
            q.name = jsonDictionary["name"] as String
            q.nameInThai = jsonDictionary["nameInThai"] as String
            q.phone = jsonDictionary["phone"] as String
            q.hours = jsonDictionary["hours"] as String
            
            //added 12 5
            q.category = jsonDictionary["category"] as String
            
            
            q.imageName = jsonDictionary["imageName"] as String
            q.descriptiontext = jsonDictionary["descriptionstring"] as String
            
            q.lat = jsonDictionary["lat"] as Double
            q.long = jsonDictionary["long"] as Double
            
            q.urlGetThereVid = jsonDictionary["urlGetThereVid"] as String
            q.urlAtLocationVid = jsonDictionary["urlAtLocationVid"] as String
            
            q.morePhotosArray = jsonDictionary["moreImages"] as [String]
            
            
            
            
            
            
            // Add the question to the question array
            items.append(q)
        }
        
        
        
        
        // Return list of question objects
        return items
        */
        
    }
    
    
 
    

            
    
    
    
            
    
        



}

