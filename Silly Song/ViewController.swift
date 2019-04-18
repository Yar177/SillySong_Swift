//
//  ViewController.swift
//  Silly Song
//
//  Created by Hoshiar Sher on 4/17/19.
//  Copyright © 2019 Hoshiar Sher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var lyricsView: UITextView!
    

    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func reset(sender: AnyObject) {
        nameField.text = ""
     //   nameField.placeholder = " Enter Your Name!"
    }
    
    @IBAction func displayLyrics(sender: AnyObject) {
        
    }
    
    func shourtName(name: String) -> String{
        var shortName = name.lowercased()
        shortName.remove(at: shortName.startIndex)
        
        //    let vowelSet = CharacterSet(charactersIn: "aeiou")
        
        
        return shortName
    }
    
    
    


}

