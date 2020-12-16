//
//  CharacterTableViewController.swift
//  Final Fantasy
//
//  Created by Bruno Silva on 16/12/20.
//

import UIKit

class CharacterTableViewController: UITableViewController {
    
    //MARK: - Variables
    var characters: [Character] = CharacterDAO().informationAboutCharacter()
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! InfoTableViewCell
        let character = characters[indexPath.row]
        cell.prepareCell(character)
        cell.imageCharacter.layer.cornerRadius = 8
        cell.imageCharacter.layer.borderWidth = 2
        cell.imageCharacter.layer.borderColor = UIColor.gray.cgColor
        return cell
    }
}
