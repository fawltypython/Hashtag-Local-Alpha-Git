//
//  Card.swift
//  Hashtag Local Alpha
//
//  Created by Garrett kay on 5/19/18.
//  Copyright © 2018 Garrett Kay. All rights reserved.
//

import Foundation
import Firebase




class Card {
    var cardTitle: String?
    var cardDescription: String?
    var postedBy: String?
    

  
    let ref : DatabaseReference!
   

    init(cardTitle: String, cardDescription: String, postedBy: String) {
        self.cardTitle = cardTitle
        self.cardDescription = cardDescription
        self.postedBy = postedBy
       
        ref = Database.database().reference().child("posts").childByAutoId()
        
        
}
    init(snapshot: DataSnapshot) {
        ref = snapshot.ref
        if let value = snapshot.value as? [String:Any] {
            
            cardTitle = value ["cardTitle"] as! String
            cardDescription = value ["cardDescription"] as! String
            postedBy = value ["postedBy"] as! String
            
        }
    }
    func save() {
        ref.setValue(toDictionary())
    }
    
    func toDictionary() -> [String : Any]
    {
      return  [
            "cardTitle" : cardTitle,
            "cardDescription" : cardDescription,
            "postedBy" : postedBy
           
       ]
    }
    
}


