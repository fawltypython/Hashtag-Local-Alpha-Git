//
//  CardCell.swift
//  Hashtag Local Alpha
//
//  Created by Garrett kay on 5/19/18.
//  Copyright © 2018 Garrett Kay. All rights reserved.
//

import UIKit
import Firebase

class CardCell: UITableViewCell {



    @IBOutlet weak var postedByLabel: UILabel!
    @IBOutlet weak var cardTitleLabel: UILabel!
    @IBOutlet weak var cardDescriptionLabel: UILabel!
    var card: Card! {
        didSet {
           // Auth.auth().addStateDidChangeListener {
             //   auth, user in
               // if user != nil {
                 //   FirebaseUser.observeHashtagProfile(user!.uid) {
                   //     hashtagProfile in
                     //   FirebaseUser.currentFirebaseUser = hashtagProfile
                       // print("")
                    //}
                //}
            //}
        cardTitleLabel.text = card.cardTitle
        cardDescriptionLabel.text = card.cardDescription
        postedByLabel.text = FirebaseUser.currentFirebaseUser?.userName
       
            
        }
    }
    
}
