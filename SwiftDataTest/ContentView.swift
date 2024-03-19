//
//  ContentView.swift
//  SwiftDataTest
//
//  Created by Gabriel Sabaini on 15/03/24.
//

import SwiftUI
import SwiftData

//a View principal onde está sua lista de nomes salvos
struct ContentView: View {
    
    //o contexto sendo passado para o arquivo
    @Environment(\.modelContext) var modelContext
    
    //A variável que busca os arquivos salvos no seu @Model
    @Query var destinations: [TestModel]
    
    @State var isOn: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(destinations) { destination in
                    Text(destination.name)
                }
                .onDelete(perform: deleteModel)
            }
            .navigationTitle("Inicio")
            .toolbar {
                ToolbarItem() {
                    Button(action: {
                        isOn.toggle()
                    }
                           , label: {
                        Image(systemName: "plus")
                    }).sheet(isPresented: $isOn) {
                        addSheet()
                    }
                }
            }
        }
    }
    
    //função que passa para o contexto que um item foi deletado
    func deleteModel(_ indexSet: IndexSet) {
        for index in indexSet {
            let destination = destinations[index]
            modelContext.delete(destination)
        }
    }
    
}

#Preview {
        ContentView()
}
