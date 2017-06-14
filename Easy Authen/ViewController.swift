//
//  ViewController.swift
//  Easy Authen
//
//  Created by Student06 on 6/13/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Implicit ประกาศตัวแปร
    var strUser: String?
    var strpass: String?
    
    
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var messageLabel: UILabel!
    
    
    @IBAction func loginButton(_ sender: Any) {
        
        //Get Value From TextField
        strUser = userTextField.text
    strpass = passwordTextField.text
        
        print("User ==> \(strUser!)")
        print("Password ==> \(strpass!)")
        
        //Find Count String
        let intUser = strUser?.characters.count
        let intPass = strpass?.characters.count
        
        print("intUser ==> \(intUser!)")
        print("intpass ==> \(intPass!)")
        
        //Call CheckSpace
        if CheckSpace(myString: strUser!) {
            print("User OK")
        }else
        {
            print("User No OK Blank User")
        }
        
        
    }//ปุ่ม Login

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    } //Mian Method
    
    
    func CheckSpace(myString: String) -> Bool {
        let intString = myString.characters.count
        var result: Bool = true
        
        if intString == 0 {
            // No Space
            result = false
        }
        
        return result
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } //didReceive


}

