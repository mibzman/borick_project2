//
//  ViewController.swift
//  Borick_Project2
//
//  Created by Borick,Samuel on 10/7/16.
//  Copyright © 2016 Borick,Samuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func SwapButton(_ sender: AnyObject) {
        
        
    }
    
    @IBOutlet weak var View1: UITextView!
    
    @IBOutlet weak var View2: UITextView!
    
    @IBOutlet weak var View3: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //this is just a test, a test to see if we can make it rest
        //http://stackoverflow.com/questions/9530075/ios-access-app-info-plist-variables-in-code
        //https://gist.github.com/mlcollard
        
        guard let path = Bundle.main.path(forResource: "AppData", ofType:"plist") else {
            return
        }
        
        
        // create an array from the contents of this file
        guard let appData = NSArray(contentsOfFile: path) else {
            print("UNable to open plist as array")
            print("path:" + path)
            return
        }
        
        for data in appData {
            print(data);
            
        }
        
        //fill text views with data
        
        
        
        
        
        //The UI is basicaly complete, I may add a scrollview around text view 3 because the text can get so long, or I may shorten the amount of text
        
    }



}

