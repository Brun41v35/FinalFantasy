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
    
    //MARK: - Functions
    func prepareCell( _ values: String) {
        labelName.text = values
    }
}
