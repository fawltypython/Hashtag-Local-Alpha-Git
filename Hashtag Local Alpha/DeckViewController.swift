//
//  DeckViewController.swift
//  Hashtag Local Alpha
//
//  Created by Garrett kay on 5/19/18.
//  Copyright © 2018 Garrett Kay. All rights reserved.
//

import UIKit
import Firebase

class DeckViewController: UITableViewController {
   
    let postRef = Database.database().reference().child("posts")
    var posts = [Card]()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        postRef.observe(.value, with: { (snapshot) in
            //posts is the same as Card
            self.posts.removeAll()
            
            for child in snapshot.children {
                let childSnapshot = child as! DataSnapshot
                let post = Card(snapshot: childSnapshot)
                self.posts.insert(post, at: 0)
                
            }
            self.tableView.reloadData()
            
        })
    }

    override func viewDidLoad() {
      
        
        super.viewDidLoad()
      
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardCell", for: indexPath) as! CardCell
        let card = posts[indexPath.row]
    
        cell.card = card
        return cell
    }
    
}

    
    //@IBAction func logOutButtonPressed(_ sender: Any) {
      
       // try!  Auth.auth().signOut()
       // self.dismiss(animated: false, completion: nil)
        
        
   // }


