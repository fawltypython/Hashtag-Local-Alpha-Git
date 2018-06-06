//
//  DeckCard.swift
//  Hashtag Local Alpha
//
//  Created by Garrett kay on 5/17/18.
//  Copyright © 2018 Garrett Kay. All rights reserved.
//

import Foundation
import UIKit

class DeckCell: UITableViewCell {
    @IBOutlet weak var cardTitle: UILabel?
    @IBOutlet weak var cardDescription: UILabel?
    @IBOutlet weak var userName: UILabel?
    @IBOutlet weak var joinButton: UIButton?
    
    
    var card: Card! {
        didSet {
          self.updateUI()
        }
    }
    func updateUI() {
        userName?.text = card.postedBy.userName
        cardTitle?.text = card.cardTitle
        cardDescription?.text = card.cardDescription
        
    }
    
    
}
