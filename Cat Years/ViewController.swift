//
//  ViewController.swift
//  Cat Years
//
//  Created by Mirko Cukich on 1/13/18.
//  Copyright © 2018 Digital Mirko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var answerLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ageBtn(_ sender: Any) {
        
        // checking to see if something was added to textfield
        if let age = textField.text{
            
            // check to see if number was entered
            if let ageAsNumber = Int(age) {
            
                // using 7 in age factor calculation
                let ageInHumanYears = ageAsNumber * 7

                // printing results on screen label under button
                answerLbl.text = "Your cat is \(ageInHumanYears) in Human Years"
            }
        }
    }
}

