//
//  ViewController.swift
//  Borick_Project2
//
//  Created by Borick,Samuel on 10/7/16.
//  Copyright © 2016 Borick,Samuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //http://stackoverflow.com/questions/9530075/ios-access-app-info-plist-variables-in-code
        //https://gist.github.com/mlcollard
        
        guard let path = Bundle.main.path(forResource: "AppData", ofType:"plist") else {
            return
        }
        
        // create an array from the contents of this file
        guard let appData = NSArray(contentsOfFile: path) else {
            print("UNable to open plist as array")
            return
        }
        
        for data in appData {
            print(data);
            
        }
        
    }



}

