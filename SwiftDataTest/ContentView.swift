//
//  ContentView.swift
//  SwiftDataTest
//
//  Created by Gabriel Sabaini on 15/03/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext
    
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
