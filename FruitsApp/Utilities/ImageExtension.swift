//
//  ImageExtension.swift
//  FruitsApp
//
//  Created by Rhullian Damião on 06/03/22.
//

import SwiftUI

extension Image {
    // FRUITS
    static var blueberry: Image {
        return Image("blueberry")
    }
    
    // SF Images
    static var systemArrowCircleRight: Image {
        .init(systemName: "arrow.right.circle")
    }
    
    static var systemArrowSquareUpRight: Image {
        .init(systemName: "arrow.up.right.square")
    }
    
    // modifications
    func cardImageModification() -> some View{
        self.resizable()
            .scaledToFit()
            .shadow(color: .shadowColor, radius: 8, x: 6, y: 8)
        
    }
}
