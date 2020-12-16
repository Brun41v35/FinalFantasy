//
//  File.swift
//  Final Fantasy
//
//  Created by Bruno Silva on 16/12/20.
//

import Foundation

class Character {
    
    //MARK: - Propeties
    let name: String
    let descripition: String
    let image: String
    
    //MARK: - Constructor
    init(name: String, descripition: String, image: String) {
        self.name = name
        self.descripition = descripition
        self.image = image
    }
}
