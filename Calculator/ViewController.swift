//
//  ViewController.swift
//  Calculator
//
//  Created by admin on 3/11/15.
//  Copyright (c) 2015 Matt D. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var displayLabel: UILabel!
    
    var userIsInTheMiddleOfTypingANumber:Bool=false
    
    @IBAction func appendDigit(sender: UIButton)
    {   //let means const
        let digit = sender.currentTitle! //! unwraps option to get string inside
        if(userIsInTheMiddleOfTypingANumber)
        {
            displayLabel.text=displayLabel.text! + digit
        }
        else
        {
                displayLabel.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
    }


}

