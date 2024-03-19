//
//  addSheet.swift
//  SwiftDataTest
//
//  Created by Gabriel Sabaini on 15/03/24.
//

import SwiftUI
import SwiftData


//Uma sheet para adicionar nomes a serem salvos
struct addSheet: View {
        
    //O contexto passado para a file
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State private var nameGiven: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Section {
                        TextField("Nome", text: $nameGiven)
                    }
                }
            }
            .toolbar {
                ToolbarItemGroup {
                    Button("Cancel") {
                        dismiss()
                    }
                    Spacer()
                    Button {
                        addModel()
                        print("salvou")
                        dismiss()
                    } label: {
                        Text("salvar")
                    }
                }
            }
        }
    }
    
    //A função que fala para o contexto o que deve ser salvo
    func addModel() {
        let destination = TestModel(name: nameGiven)
        modelContext.insert(destination)
    }
}

#Preview {
    addSheet()
}
