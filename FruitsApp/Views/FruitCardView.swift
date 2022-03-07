//
//  FruitCardView.swift
//  FruitsApp
//
//  Created by Rhullian Damião on 06/03/22.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - Properties
    @State private var isAnimating: Bool = false
    
    var fruit: Fruit
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //FRUIT IMAGE
                Image(fruit.image)
                    .cardImageModification()
                    .scaleEffect(isAnimating ? 1 : 0.6)
                //FRUIT TITLE
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .shadowColor, radius: 2, x: 2, y: 2)
                
                // FRUIT SUBTITLE
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                
                
                
                // START BUTTON
                StartButtonView()
                    .padding()
                
            }//: VSTACK
        }//: ZSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })//: ON APPEAR
        .frame(height:UIScreen.main.bounds.height * 0.85, alignment: .center)
        .background(LinearGradient(gradient: fruit.gradient, startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }//:BODY
}

//MARK: - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
