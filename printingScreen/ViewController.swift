//
//  ViewController.swift
//  printingScreen
//
//  Created by torrencio Vigilante on 2015-07-29.
//  Copyright (c) 2015 Glint. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let x: Int32 = 3;//create a variable to hold the number of times to print
        let point1 = ("Tory\n" as NSString).UTF8String
        var pointerx: UnsafeMutablePointer<Int8> = UnsafeMutablePointer(point1)
        
        //create something we can convert to cstring
        let secondLine = ("I GOT IT\n" as NSString).UTF8String
        var secondLineFinal: UnsafeMutablePointer<Int8> = UnsafeMutablePointer(secondLine)
        
        
        appendVector(x, pointerx)
        appendVector(x+5, secondLineFinal)//printx+5, making sure math works
        //needed one shorter to make sure it was clearing
        let tory = ("tory\n" as NSString).UTF8String
        var rules: UnsafeMutablePointer<Int8> = UnsafeMutablePointer(tory)
        appendVector(x, rules)
        let getThatString=getString()
        
        let holdOddCString=String.fromCString(getThatString)
        let FinalString:NSString = NSString(string:holdOddCString!)
        
        
        
        
        
        printing()//call my printing function
        println(FinalString)//this will print the phrase YESSS, retrieved from the function

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

