//
//  EmojiTVC.swift
//  EmojiDictionary
//
//  Created by YBE on 11/18/19.
//  Copyright © 2019 DreamDev. All rights reserved.
//

import UIKit

class EmojiTVC: UITableViewController {

    var emojiIcons: [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiIcons = createEmoji()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojiIcons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        let emoji = emojiIcons[indexPath.row]
        cell.textLabel?.text = "\(emoji.theEmoji) - \(emoji.theCategory)"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojiIcons[indexPath.row]
        performSegue(withIdentifier: "ourSegue", sender: emoji)
        
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDisplayVC = segue.destination as! DisplayVC
        emojiDisplayVC.emoji = sender as! Emoji
    }
    
    func createEmoji() -> [Emoji]{
        
        let glove = Emoji()
        glove.theEmoji = "🥊"
        glove.theCategory = "Sport"
        glove.theDef = "You're gonna get punched!"
        glove.theRelDate = 1997
        
        let softball = Emoji()
        softball.theEmoji = "🥎"
        softball.theCategory = "Sports"
        softball.theRelDate = 2009
        softball.theDef = "Let's play ball"
        
        let karateGee = Emoji()
        karateGee.theEmoji = "🥋"
        karateGee.theCategory = "Wardrobe"
        karateGee.theDef = "OOOOUUUUSSSSHHHH"
        karateGee.theRelDate = 2012
        
        return [glove, softball, karateGee]
    }
}
