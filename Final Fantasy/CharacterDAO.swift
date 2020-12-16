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
        let noctis = Character(name: "Noctis", descripition: "Noctis é o herdeiro legítimo do trono de Lucis, e suas provações começam quando ele parte da Cidade Real para se casar com a lady Lunafreya Nox Fleuret. Em combate, ele brande armas espectrais que forja em pleno ar, poder herdado por aqueles da linhagem real.", image: "noctisIMG.jpg")
        
        let gladious = Character(name: "Gladious Amicitia", descripition: "A família Amicitia serve como o escudo protetor dos reis de Lucis e de suas linhagens há muitos anos, e Gladiolus é seu filho mais velho. Seu laço com Noctis vai além da mera relação de um guarda-costas com seu protegido. Com sua incrível força, ele está sempre pronto para proteger seus companheiros contra ameaças.",image: "gladiousIMG.jpg")
        
        let ignis = Character(name: "Ignis Scientia", descripition: "Ignis foi criado junto do príncipe Noctis para se tornar o conselheiro do herdeiro legítimo. Sua educação intensiva o preparou com a engenhosidade e a compostura necessárias para tal papel, e sua sagacidade estratégica se provará indispensável durante a jornada do príncipe.", image: "IgnisIMG.jpg")
        
        let prompto = Character(name: "Prompto Argentum", descripition: "IGrande amigo do Noctis desde que eles se conheceram quando adolescentes, Prompto é um jovem comum que se vê impotente frente à tragédia que recai sobre Lucis. Apesar disso, ele se esforça para fazer mais do que a sua parte, aliviando o peso que seus companheiros carregam e alegrando seus dias.", image: "PromptoIMG.jpg")
        
        let lunafreya = Character(name: "Lunafreya Nox Fleuret", descripition: "Luna construiu várias boas lembranças em sua infância com o Noct, mas seus dias de inocência chegaram abruptamente ao fim quando o império tomou sua terra natal, Tenebrae. Superando adversidades, ela se tornou a Oráculo mais jovem da história. Adorada e respeitada em todo o mundo, ela agora viaja em busca da comunhão com os deuses para auxiliar Noct em sua jornada.", image: "lunaIMG.jpg")
                
        let allInformations: [Character] = [noctis, gladious, ignis, prompto, lunafreya]
        return allInformations
    }
}
