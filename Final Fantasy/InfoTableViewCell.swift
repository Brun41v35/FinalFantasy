//
//  InfoTableViewCell.swift
//  Final Fantasy
//
//  Created by Bruno Silva on 16/12/20.
//

import UIKit

class InfoTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var imageCharacter: UIImageView!
    
    //MARK: - Functions
    func prepareCell( _ values: Character) {
        labelName.text = values.name
        imageCharacter.image = UIImage(named: values.image)
    }
}
