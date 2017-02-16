//
//  LoginViewController.swift
//  WeiXinDemo
//
//  Created by songbiwen on 2017/2/15.
//  Copyright © 2017年 songbiwen. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var serverTextField: UITextField!
    @IBOutlet weak var commitBarButtonItem: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if sender as! NSObject == self.commitBarButtonItem {
            UserDefaults.standard.set(self.accountTextField.text, forKey: "WeiXinID");
            UserDefaults.standard.set(self.passwordTextField.text, forKey: "WeiXinPassword");
            UserDefaults.standard.set(self.serverTextField.text, forKey: "WeiXinServer");
            
        }
        
    }

}
