//
//  ViewController.swift
//  Silly Song
//
//  Created by Hoshiar Sher on 4/17/19.
//  Copyright © 2019 Hoshiar Sher. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var lyricsView: UITextView!
    
    
    let bananaFanaTemplate = [
        "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
        "Banana Fana Fo F<SHORT_NAME>",
        "Me My Mo M<SHORT_NAME>",
        "<FULL_NAME>"].joined(separator: "\n")


    override func viewDidLoad() {
       
        super.viewDidLoad()
        self.nameField.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func reset(sender: AnyObject) {
        nameField.text = ""
     //   nameField.placeholder = " Enter Your Name!"
    }
    
    @IBAction func displayLyrics(sender: AnyObject) {
        print("hereee")
        
        if nameField.text != nil {
            lyricsView.text = lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: nameField.text!)
        }
        
    }
    
    func shourtName(name: String) -> String{
        var shortName = name.lowercased()
        shortName.remove(at: shortName.startIndex)
        
        return shortName
    }
    
    
    func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
        let shortName = shourtName(name: fullName)
        
        let lyrics = lyricsTemplate
            .replacingOccurrences(of: "<FULL_NAME>", with: fullName)
            .replacingOccurrences(of: "<SHORT_NAME>", with: shortName)
        
        return lyrics
    }
    
    
    func textFieldShouldReturn(nameField: UITextField) -> Bool {
        print("should---->return")
        //textField code
        
        
        displayLyrics(sender: nameField)
        return true
    }

    
    


}

