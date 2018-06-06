//
//  HashtagProfile.swift
//  Hashtag Local Alpha
//
//  Created by Garrett kay on 5/19/18.
//  Copyright © 2018 Garrett Kay. All rights reserved.
//

import Foundation
import FirebaseDatabase

class HashtagProfile {
    var uid: String?
    var email: String?
    var userName: String?
    
    let userRef : DatabaseReference!
    
    init(uid: String, email: String, userName: String) {
        self.uid = uid
        self.email = email
        self.userName = userName
        
        userRef = Database.database().reference().child("users").childByAutoId()
    }
    
    func save() {
        userRef.setValue(toUserDictionary())
    }
    
    func toUserDictionary() -> [String : Any]
    {
        return  [
            "uid" : uid,
            "email" : email,
            "userName" : userName
            
        ]
    }

}
