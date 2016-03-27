//
//  VerifyNumberViewController.swift
//  PJ
//
//  Created by William Gu on 3/25/16.
//  Copyright © 2016 Gu Studios. All rights reserved.
//

import UIKit

class VerifyNumberViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var verifyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.keyboardType = UIKeyboardType.NumberPad
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        textField?.becomeFirstResponder();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func segueThatShit() {
        //TODO: Check valid code for phone number
        let codeNum = errorCheckCode((self.textField?.text)!);
        if (codeNum == "") {
            return;
        }
        
    }
    
    
    func errorCheckCode(code: String) -> String {
        if (code.characters.count < 5) {
            return ""
        }
        return code;
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
        
    }
    

}
