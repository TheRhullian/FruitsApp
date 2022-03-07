//
//  FruitRowView.swift
//  FruitsApp
//
//  Created by Rhullian Damião on 06/03/22.
//

import SwiftUI

struct FruitRowView: View {
    // MARK: - Properties
    
    var fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        HStack {
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .shadowColor, radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: fruit.gradient, startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }//: VSTACK
        }//: HSTACK
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
