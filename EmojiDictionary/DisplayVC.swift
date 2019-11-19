//
//  DisplayVC.swift
//  EmojiDictionary
//
//  Created by YBE on 11/18/19.
//  Copyright © 2019 DreamDev. All rights reserved.
//

import UIKit

class DisplayVC: UIViewController {
    
    @IBOutlet weak var iconImage: UILabel!
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    

    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iconImage.text = emoji.theEmoji
        labelText.text = emoji.theDef
        categoryLabel.text = "Category: " + emoji.theCategory
        birthYearLabel.text = "Release Date: \(emoji.theRelDate)"
    }
    



}
