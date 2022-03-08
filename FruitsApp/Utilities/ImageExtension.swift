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
        .init("blueberry")
    }
    
    static var logo: Image {
        .init("logo")
    }
    
    // SF Images
    static var systemArrowCircleRight: Image {
        .init(systemName: "arrow.right.circle")
    }
    
    static var systemArrowSquareUpRight: Image {
        .init(systemName: "arrow.up.right.square")
    }
    
    static var systemInfoCircle: Image {
        .init(systemName: "info.circle")
    }
    
    static var systemXMark: Image {
        .init(systemName: "xmark")
    }
    
    static var systemSliderHorizontal: Image {
        .init(systemName: "slider.horizontal.3")
    }
    
    static var systemAppsIphone: Image {
        .init(systemName: "apps.iphone")
    }
    
    static var systemBrush: Image {
        .init(systemName: "paintbrush")
    }
    
    // modifications
    func cardImageModification() -> some View{
        self.resizable()
            .scaledToFit()
            .shadow(color: .shadowColor, radius: 8, x: 6, y: 8)
        
    }
}
