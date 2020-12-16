//
//  CharacterDAO.swift
//  Final Fantasy
//
//  Created by Bruno Silva on 16/12/20.
//

import Foundation

class CharacterDAO {
    
    //MARK: - Functions
    func informationAboutCharacter() -> [Character] {
        let noctis = Character(name: "Noctis", descripition: "Ele é um principe!")
        let gladious = Character(name: "Gladious Amicitia", descripition: "É muito forte!")
        let ignis = Character(name: "Ignis Scientia", descripition: "Gosta de Cozinhar!")
        let allInformations: [Character] = [noctis, gladious, ignis]
        return allInformations
    }
}
