//
//  ViewController.swift
//  Borick_Project2
//
//  Created by Borick,Samuel on 10/7/16.
//  Copyright © 2016 Borick,Samuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    func GetPlist() -> Dictionary<String, String>{
        
        var dictRoot: NSDictionary?
        if let path = Bundle.main.path(forResource: "AppData", ofType: "plist") {
            dictRoot = NSDictionary(contentsOfFile: path)
        }
        
        guard let AppData = dictRoot else
        {
            // Your dictionary contains an array of dictionary
            // Now pull an Array out of it.
            
            // Now a loop through Array to fetch single Item from catList which is Dictionary
            /*
             dict.forEach({ (dict) in
             print("Category Name \(dict["category_name"]!)")
             print("Category Id \(dict["cid"])")
             })
             
             for (key, value) in dict {
             print (key, value)
             }*/
            
            print("oh no!  AppData failed to initialize!  RUN!")
            let emptyDictionary = [String: String]()
            return emptyDictionary
        }
        return AppData as! Dictionary
    }
    
    @IBAction func SwapButton(_ sender: AnyObject) {
        
        
    }
    
    @IBOutlet weak var View1: UITextView!
    
    @IBOutlet weak var View2: UITextView!
    
    @IBOutlet weak var View3: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //http://stackoverflow.com/questions/9530075/ios-access-app-info-plist-variables-in-code
        //https://gist.github.com/mlcollard
        
        
        
        
        
        
        
        
        //The UI is basicaly complete, I may add a scrollview around text view 3 because the text can get so long, or I may shorten the amount of text
        
    }



}

