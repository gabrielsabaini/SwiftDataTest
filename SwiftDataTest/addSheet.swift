//
//  addSheet.swift
//  SwiftDataTest
//
//  Created by Gabriel Sabaini on 15/03/24.
//

import SwiftUI
import SwiftData

struct addSheet: View {
        
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
    
    func addModel() {
        let destination = TestModel(name: nameGiven)
        modelContext.insert(destination)
    }
}

#Preview {
    addSheet()
}
