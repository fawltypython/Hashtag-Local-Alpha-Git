//
//  FireBaseUserService.swift
//  Hashtag Local Alpha
//
//  Created by Garrett kay on 5/19/18.
//  Copyright © 2018 Garrett Kay. All rights reserved.
//

import Foundation
import Firebase

class FirebaseUser {
    
    static var currentFirebaseUser : HashtagProfile?
    
    static func observeHashtagProfile(_ uid:String, completion: @escaping ((_ hashtagProfile:HashtagProfile?)->())) {
        
        let userUidRef = Database.database().reference().child("users/profile/\(uid)")
        
        userUidRef.observe(.value, with: { snapshot in
            var hashtagProfile:HashtagProfile?
            
            if let dict = snapshot.value as? [String:Any],
                let email = dict["email"] as? String,
                let userName = dict["userName"] as? String {
            
                
                hashtagProfile = HashtagProfile(uid: snapshot.key, email: email, userName: userName)
        }
            completion(hashtagProfile)
        })
        
    }
   
}

