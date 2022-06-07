//
//  Empresa.swift
//  EcoInvest
//
//  Created by aluno on 07/06/22.
//

import Foundation

struct Empresa {
    
    var nome: String
    var descricao: String
    var icone: String
    
    init(nome: String, descricao: String, icone: String) {
        self.nome = nome
        self.descricao = descricao
        self.icone = icone
    }
    
    static var empresa_padrao = Empresa(nome: "Nome da organização", descricao: "Descrição da organização", icone: "Amazon")

    
}

//var empresa1 = Empresa(nome: "Amazon", descricao: "Lorem ipsum dolor sit amet", icone: "Amazon")
//var empresa2 = Empresa(nome: "Natura", descricao: "Amet sit dolor ipsum lorem", icone: "Natura")
//var empresa3 = Empresa(nome: "Apple", descricao: "Lorem lorem ipsum ipsum dolor dolor sit sit amet amet", icone: "Pear")
