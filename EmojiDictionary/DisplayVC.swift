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

    var emoji = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        iconImage.text = emoji
        sentDefinitions()
       
    }
    

    func sentDefinitions() {
        if emoji == "🥊" {
            labelText.text = "You're gonna get punched in the face!"
        } else if emoji == "🥎" {
            labelText.text = "let's play ball!"
        } else if emoji == "🥋" {
            labelText.text = "OOOUUSSSHHH !"
        } else if emoji == "🛰" {
            labelText.text = "beep beep beep beep! "
        } else if emoji == "🗿" {
            labelText.text = "Hello Dum Dum! Do you have Gum Gum?"
        } else if emoji == "🎢" {
            labelText.text = "WEEEEEEEEE!"
        } else if emoji == "🔐" {
            labelText.text = "Keep Out Sucka!"
        } else if emoji == "🕷" {
            labelText.text = "RRRRUUUNNN ! Its a spider!"
        }
    }

}
