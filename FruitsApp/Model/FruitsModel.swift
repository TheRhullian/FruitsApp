//
//  FruitsModel.swift
//  FruitsApp
//
//  Created by Rhullian Damião on 06/03/22.
//

import SwiftUI

//MARK: - Fruits Data Model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var gradient: Gradient {
        Gradient(colors: gradientColors)
    }
    var description: String
    var nutrition: [String]
}
