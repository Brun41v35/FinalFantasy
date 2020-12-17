//
//  DetailsViewController.swift
//  Final Fantasy
//
//  Created by Bruno Silva on 16/12/20.
//

import UIKit

class DetailsViewController: UIViewController, DetalhesPersonagensDelegate {
    
    var teste: Character?
    
    //MARK: - IBOutlets
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        adicionaPersonagem(teste!)
    }
    
    //MARK: - Functions
    func adicionaPersonagem(_ character: Character) {
        guard let labelNameCharacter = labelName else { return }
        labelNameCharacter.text =  character.name
    }
}
