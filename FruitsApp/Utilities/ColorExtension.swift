//
//  ColorExtension.swift
//  FruitsApp
//
//  Created by Rhullian Damião on 06/03/22.
//

import SwiftUI

extension Color {
    // Colors
    
    /// Blueberry Light
    static var blueberryLight: Color {
        Color("ColorBlueberryLight")
    }
    
    /// Blueberry Dark
    static var blueberryDark: Color {
        Color("ColorBlueberryDark")
    }
    
    //Shadow
    static var shadowColor: Color {
        .black.opacity(0.15)
    }
}

extension Gradient {
    // Gradient Colors
    static var blueberryGradient: Gradient {
        Gradient(colors: [Color.blueberryLight, Color.blueberryDark])
    }
}
