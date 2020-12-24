//
//  DetailsViewController.swift
//  Final Fantasy
//
//  Created by Bruno Silva on 16/12/20.
//

import UIKit

class DetailsViewController: UIViewController {
    
    //MARK: - Variables
    var personagem: Character?
    
    //MARK: - IBOutlets
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let valor = personagem else {
            print("Sem valor")
            return
        }
        adicionaPersonagem(valor)
    }
    
    //MARK: - Functions
    func adicionaPersonagem(_ character: Character) {
        guard let labelNameCharacter = labelName else { return }
        guard let imageCharacter = image else { return }
        labelNameCharacter.text =  character.name
        imageCharacter.image = UIImage(named: character.image)
    }
}
