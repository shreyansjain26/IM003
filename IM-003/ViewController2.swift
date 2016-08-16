//
//  ViewController2.swift
//  IM-003
//
//  Created by Shreyans Jain on 11/08/16.
//  Copyright © 2016 sj. All rights reserved.
//

import UIKit
import PhoneNumberKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var validateButton: UIButton!
    
    @IBOutlet weak var outField: UILabel!
    @IBOutlet weak var inputField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func validate(sender: AnyObject) {
        
        outField.text = ""
        do {
            let number = inputField.text
            let phoneNumber = try PhoneNumber(rawNumber: number!)
            if(phoneNumber.isValidNumber) {
                outField.text = "Valid Number"
            }
            else {
                outField.text = "Invalid Number"
            }
            
        }
        catch {
            let alertMsg = UIAlertController(title: "Error", message: "NumberParse Error", preferredStyle: .Alert)
            let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alertMsg.addAction(defaultAction)
            presentViewController(alertMsg, animated: true, completion: nil)
            print("Generic parser error")
        }
        
        
    }
    
}