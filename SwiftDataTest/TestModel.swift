//
//  TestModel.swift
//  SwiftDataTest
//
//  Created by Gabriel Sabaini on 15/03/24.
//

import Foundation
import SwiftData

//Seria o antigo "Conteiner" do CoreData, onde você adiciona o que será salvo no seu app.
@Model
class TestModel {
    
    //Se você quiser conectar o iCloud é necessário colocar as variáveis como opcionais ou inicializa-las aqui
    //Todas as relashionships precisam ser opcionais
    //Não pode usar o @Attribute(.unique)
    var name: String = ""
    
    
    init(name: String = "Gabriel") {
        self.name = name
    }
    
}
