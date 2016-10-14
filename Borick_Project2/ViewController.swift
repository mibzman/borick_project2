//
//  ViewController.swift
//  Borick_Project2
//
//  Created by Borick,Samuel on 10/7/16.
//  Copyright © 2016 Borick,Samuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    var AppData = Dictionary<String,String>()
    
    func GetPlist(){
        
        var dictRoot: NSDictionary?
        if let path = Bundle.main.path(forResource: "AppData", ofType: "plist") {
            dictRoot = NSDictionary(contentsOfFile: path)
        }
        
        guard let tempAppData = dictRoot else
        {
            
            print("oh no!  AppData failed to initialize!  RUN!")
            let emptyDictionary = [String: String]()
            AppData = emptyDictionary
            return
        }
        AppData = tempAppData as! Dictionary
    }
    
    func SliderString(_ SliderVal: Float)-> String{
        let rightText = AppData["rightText"]
        var numWords = rightText?.components(separatedBy: " ").count
        numWords! -= 1
        let Words = rightText?.components(separatedBy: " ")
        //print(Words)
        let wordLimit = Int(Float(numWords!) * SliderVal)
        //print(wordLimit)
        
        var output = ""
        
        for word in Words![0...wordLimit] {
            output += word + " "
        }
        return output
    }
    
    
    @IBOutlet weak var Slider: UISlider!
    
    @IBOutlet weak var View1: UITextView!
    
    @IBOutlet weak var View2: UITextView!
    
    @IBOutlet weak var View3: UITextView!
    
    
    @IBAction func SliderValueChanged(_ sender: AnyObject) {
        self.View3.text = SliderString(Slider.value)
    }
    
    
    
    @IBAction func SwapButton(_ sender: AnyObject) {
        let temp = self.View1.text
        self.View1.text = self.View2.text
        self.View2.text = temp
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //http://stackoverflow.com/questions/9530075/ios-access-app-info-plist-variables-in-code
        //https://gist.github.com/mlcollard
        
        GetPlist()
        self.View1.text = AppData["leftText"]
        self.View2.text = AppData["centerText"]
        self.View3.text = SliderString(Slider.value)
        
    }



}

