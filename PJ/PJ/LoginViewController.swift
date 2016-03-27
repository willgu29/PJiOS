//
//  LoginViewController.swift
//  PJ
//
//  Created by William Gu on 3/25/16.
//  Copyright © 2016 Gu Studios. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var loginLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textField.keyboardType = UIKeyboardType.NumberPad;
    }
    override func viewWillAppear(animated: Bool) {
        textField?.becomeFirstResponder();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func segueToVerify() {
        //TODO: Send code to phoneNumber
        let formattedNumber = formatNumber((self.textField.text)!);
        let phoneNumber = errorCheckNumber(formattedNumber);
        if (phoneNumber == "") {
            return;
        }
        
        
    }

    func errorCheckNumber(phoneNumber: String) -> String {
        if (phoneNumber.characters.count < 12) {
            return ""
        }
        //TODO: Verify is on database
        return phoneNumber;
    }

    func formatNumber(tenDigit: String) -> String {
        let stringArray = tenDigit.componentsSeparatedByCharactersInSet(
            NSCharacterSet.decimalDigitCharacterSet().invertedSet)
        let numbersOnlyString = stringArray.joinWithSeparator("")
        
        let newFormat = "+1" + numbersOnlyString;
        return newFormat;
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
    }
    

}
