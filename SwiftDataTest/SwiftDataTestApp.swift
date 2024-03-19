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
        .modelContainer(modelContainer)
    }
}
