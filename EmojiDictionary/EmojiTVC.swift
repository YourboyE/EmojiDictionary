//
//  EmojiTVC.swift
//  EmojiDictionary
//
//  Created by YBE on 11/18/19.
//  Copyright © 2019 DreamDev. All rights reserved.
//

import UIKit

class EmojiTVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 20
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = "Hello World"

        return cell
    }
  
}