//
//  SwiftDataTestApp.swift
//  SwiftDataTest
//
//  Created by Gabriel Sabaini on 15/03/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataTestApp: App {
    
    let modelContainer: ModelContainer
    
    //um init para a inicialização do app em que é indicado o container usado, mas que se não for acessado não entrará no app
    init() {
        do {
            modelContainer = try ModelContainer(for: TestModel.self)
        } catch {
            fatalError("Could not initialize ModelContainer")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(modelContainer) //passando para o app todo qual é o container (@Model) usado
        //Nota: o modelContainer recebe o (for: TestModel.self), e pode ser colocado aqui caso não tenha o init.
    }
}
