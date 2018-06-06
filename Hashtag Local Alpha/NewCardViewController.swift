//
//  NewCardViewController.swift
//  Hashtag Local Alpha
//
//  Created by Garrett kay on 5/19/18.
//  Copyright © 2018 Garrett Kay. All rights reserved.
//

import UIKit
import Foundation
import Firebase
import FirebaseDatabase



class NewCardViewController: UIViewController {
    
    @IBOutlet weak var cancelButton : UIBarButtonItem!

    @IBOutlet weak var postButton: UIBarButtonItem!
    
    @IBOutlet weak var cardTitleTextView: UITextView!
    
    @IBOutlet weak var cardTitlePlaceHolderLabel: UILabel!
    
    @IBOutlet weak var cardDescriptionTextView: UITextView!
    
    @IBOutlet weak var cardDescriptionPlaceHolderLabel: UILabel!
    

    @IBAction func postButtonPressed(_ sender: Any) {
     

    if cardTitleTextView.text != "",
        cardDescriptionTextView.text != "" {
        let newCard = Card(cardTitle: cardTitleTextView.text, cardDescription: cardDescriptionTextView.text)//, postedBy:)
        newCard.save()
        
        self.dismiss(animated: false, completion: nil)
        }
        
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

    /*    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
