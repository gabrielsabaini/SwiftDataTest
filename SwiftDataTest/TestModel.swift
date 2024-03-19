//
//  TestModel.swift
//  SwiftDataTest
//
//  Created by Gabriel Sabaini on 15/03/24.
//

import Foundation
import SwiftData

@Model
class TestModel {
    
    //If you need iCloud, you need to put the value as optional or an Initializer here.
    //Also all your relashionships need to be optional.
    //And you cannot use @Attribute(.unique) in your project.
    var name: String = ""
    
    init(name: String = "Gabriel") {
        self.name = name
    }
    
}
