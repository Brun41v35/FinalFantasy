//
//  CharacterTableViewController.swift
//  Final Fantasy
//
//  Created by Bruno Silva on 16/12/20.
//

import UIKit

protocol DetalhesPersonagensDelegate {
    var personagemDelegate: Character? { get set }
}

class CharacterTableViewController: UITableViewController {
    
    //MARK: - Variables
    var characters: [Character] = CharacterDAO().informationAboutCharacter()
    var delegate: DetalhesPersonagensDelegate?
    
    init (delegate: DetalhesPersonagensDelegate) {
        super.init(nibName: "CharacterTableViewController", bundle: nil)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Functions
    func chamaTelaDetalhes() {
        let detalhes = DetailsViewController()
        navigationController?.pushViewController(detalhes, animated: true)
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let indexSelected = tableView.indexPathForSelectedRow else { return }
        let teste = characters[indexSelected.row]
        delegate?.personagemDelegate = teste
        chamaTelaDetalhes()
    }
}
