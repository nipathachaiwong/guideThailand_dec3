//
//  QuizModel.swift
//  Quiz
//
//  Created by Christopher Ching on 2014-11-18.
//  Copyright (c) 2014 CodeWithChris. All rights reserved.
//

import UIKit

class ItemModel: NSObject {
   
    //get json url
    let GetJsonUrlInstance:GetJsonUrl = GetJsonUrl()
    
    func getItems() -> [Item2] {
        
        // Array of question objects
        var items:[Item2] = [Item2]()
        
        
        
        // Get Json array of dictionaries
        //remote code below currenrlt commented out
        
       // let jsonObjects:[NSDictionary] = self.getRemoteJsonFile()
        
        //locale
         let jsonObjects:[NSDictionary] = self.getLocalJsonFile()
        
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
        
        for element in items {
            println(element)
        }
        
    
        
        // Return list of question objects        
        return items
        
       
    }
    
    func getRemoteJsonFile() -> [NSDictionary] {
        
        // Create a new URL
       // let remoteUrl:NSURL? = NSURL(string: "https://dl.dropboxusercontent.com/u/196547970/QuestionDat.json")
        
        let remoteUrl:NSURL? = NSURL(string: GetJsonUrlInstance.JsonUrl)
              
        // Check if it's nil
        if let actualRemoteUrl = remoteUrl {
            
            // Try to get the data
            let fileData:NSData? = NSData(contentsOfURL: actualRemoteUrl)
            
            // Check if it's nil
            if let actualFileData = fileData {
                
                // Parse out the dictionaries
                let arrayOfDictionaries:[NSDictionary]? = NSJSONSerialization.JSONObjectWithData(actualFileData, options: NSJSONReadingOptions.MutableContainers, error: nil) as [NSDictionary]?
                
                if let actualArrayOfDictionaries = arrayOfDictionaries {
                    
                    // Successfully parsed out array of dictionaries
                    return actualArrayOfDictionaries
                }
            }
            
        }
        return [NSDictionary]()
    }
    
    func getLocalJsonFile() -> [NSDictionary] {
        
        // Get an NSURL obj pointing to the json file in our app bundle
       
        // let appBundlePath:String? = NSBundle.mainBundle().pathForResource("Item2Data", ofType: "json")
        let appBundlePath:String? = NSBundle.mainBundle().pathForResource(GetJsonUrlInstance.JsonFileName, ofType: "json")
        
        // Use optional binding to check if path exists
        if let actualBundlePath = appBundlePath {
            
            // Bundle path exists
            let urlPath:NSURL? = NSURL(fileURLWithPath: actualBundlePath)
            
            if let actualURLPath = urlPath {
                
                // NSURL obj was created, now create the NSData obj
                let jsonData:NSData? = NSData(contentsOfURL: actualURLPath)
                
                if let actualJsonData = jsonData {
                    
                    // NSData exists, use the NSJSONSerialization classes to parse the data and create the array/dictionaries
                    let arrayOfDictionaries:[NSDictionary]? = NSJSONSerialization.JSONObjectWithData(actualJsonData, options: NSJSONReadingOptions.MutableContainers, error: nil) as [NSDictionary]?
                    
                    if let actualArrayOfDictionaries = arrayOfDictionaries {
                        
                        // Successfully parsed out array of dictionaries
                        return actualArrayOfDictionaries
                    }
                    
                }
                
            }
            
        }
        
        return [NSDictionary]()
        
    }
}
