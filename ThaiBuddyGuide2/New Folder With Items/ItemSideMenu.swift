//
//  Question.swift
//  Quiz
//
//  Created by Christopher Ching on 2014-11-18.
//  Copyright (c) 2014 CodeWithChris. All rights reserved.
//

import UIKit

class ItemSideMenu: NSObject {
   
    var name:String = ""
    var nameInThai:String = ""
    var phone:String = ""
    var hours:String = ""
    var imageName:String = ""
    var descriptiontext:String = ""
    var category:String = ""
    //these two cord need to be converted
    //code: var lat = (Wage.text as NSString).floatValue
    
    //use in gotovC
     var lat:Double = 0.007
    var long:Double  = 0.007
    
    //urls for videoVC
    var urlGetThereVid:String = ""
    var urlAtLocationVid:String = ""
    
    //morePhotosof location VC
    var morePhotosArray:[String] = [String]()
    
  
    
    
    
}
