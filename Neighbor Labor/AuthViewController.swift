//
//  AuthViewController.swift
//  Neighbor Labor
//
//  Created by Rixing on 2/24/17.
//  Copyright © 2017 Rixing. All rights reserved.
//

import UIKit


class AuthViewController: BaseViewController{
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBAction func loginAction(_ sender: Any) {
        // Need to check string
        authInteractor.loginWith(email: emailTF.text!, password: passwordTF.text!) { (success, error) in
            if success {
                     self.dismiss(animated: true, completion: nil)
            }else{
                // Not Final
                self.showAlert(title: "Unable to Login In", message: error!.localizedDescription)
            }
            
        }
    }
    
}

class RegisterController : BaseViewController{
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmTF: UITextField!
    @IBOutlet weak var bioTF: UITextView!
    @IBOutlet weak var termsLabelAction: UILabel!

    
    @IBAction func registerAction(_ sender: Any) {
        authInteractor.signUpWith(email:emailTF.text!
            , password: passwordTF.text!,
              name: nameTF.text!, phone: "4139778327",
              ppic: nil,
              skillset: ["skill1"],
              bio: bioTF.text!)
                { (success, error) in
                
                if (error == nil) {
                    self.showAlert(title: "Sucess", message: "Sucess")
                }else{
                    // Not Final
                    self.showAlert(title: "Unable to Login In", message: error!.localizedDescription)
                }

                
                
        }
        
        
    }
    
}
