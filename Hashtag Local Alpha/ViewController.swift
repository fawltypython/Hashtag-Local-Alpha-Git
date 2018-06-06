//
//  ViewController.swift
//  Hashtag Local Alpha
//
//  Created by Garrett kay on 5/16/18.
//  Copyright © 2018 Garrett Kay. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
  
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      view.setGradientBackgroundColor(colorOne: UIColor.darkGray, colorTwo: Colors.hashtagBlue)
        
        emailTxt.layer.borderWidth = 1
        emailTxt.layer.borderColor = UIColor.white.cgColor
        emailTxt.layer.cornerRadius = 20
        emailTxt.clipsToBounds = true
        
        passwordTxt.layer.borderWidth = 1
        passwordTxt.layer.borderColor = UIColor.white.cgColor
        passwordTxt.layer.cornerRadius = 20
        passwordTxt.clipsToBounds = true
        
        loginButton.layer.cornerRadius = 20
        signUpButton.layer.cornerRadius = 20
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButtonPressed(_ sender: Any) {
    
        Auth.auth().signIn(withEmail: self.emailTxt.text!, password: self.passwordTxt.text!) {user, error in
            if error == nil {
                print("login successful")
                self.performSegue(withIdentifier: "toDeckViewController", sender: self)
            } else {
                print ("error")
                self.dismiss(animated: false, completion: nil)
                
            }
           
         
        }
    

     
        
    }
    
    
   
}

