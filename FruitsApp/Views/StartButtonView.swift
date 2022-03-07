//
//  StartButtonView.swift
//  FruitsApp
//
//  Created by Rhullian Damião on 06/03/22.
//

import SwiftUI

struct StartButtonView: View {
    
    
    var body: some View {
        Button {
            print("EXIT ONBOARDING")
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image.systemArrowCircleRight
                    .imageScale(.medium)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(.white,lineWidth: 1.25)
            )
        }//:Button
        .accentColor(.white)

    }//: BODY
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
