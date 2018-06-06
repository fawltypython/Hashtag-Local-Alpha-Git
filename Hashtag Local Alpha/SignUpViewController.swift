//
//  SignUpViewController.swift
//  Hashtag Local Alpha
//
//  Created by Garrett kay on 5/17/18.
//  Copyright © 2018 Garrett Kay. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var continueSignUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradientBackgroundColor(colorOne: UIColor.darkGray, colorTwo: Colors.hashtagBlue)
        
        emailText.layer.borderWidth = 1
        emailText.layer.borderColor = UIColor.white.cgColor
        emailText.layer.cornerRadius = 20
        emailText.clipsToBounds = true
        
        usernameText.layer.borderWidth = 1
        usernameText.layer.borderColor = UIColor.white.cgColor
        usernameText.layer.cornerRadius = 20
        usernameText.clipsToBounds = true
        
        passwordText.layer.borderWidth = 1
        passwordText.layer.borderColor = UIColor.white.cgColor
        passwordText.layer.cornerRadius = 20
        passwordText.clipsToBounds = true
        
        
        continueSignUp.layer.cornerRadius = 20
        
        func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
    @IBAction func continueSignUpButtonPressed(_ sender: Any) {
        
        guard let username = usernameText.text else{return}
        guard let email = emailText.text else{return}
        guard let password = passwordText.text else {return}
        
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            
            if error != nil {
                print(error?.localizedDescription)
            } else  if let user = user {
                let newUser = HashtagProfile(uid: user.uid, email: email, userName: username)
                newUser.save()
            }
            
            Auth.auth().signIn(withEmail: email, password: password) {(user, error) in
                if error != nil {
                    print(error?.localizedDescription)
                } else {
                    self.dismiss(animated: true, completion: nil)
                }
            }
            
            
        }
        
        
    }
    
}
