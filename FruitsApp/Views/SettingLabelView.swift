//
//  SettingLabelView.swift
//  FruitsApp
//
//  Created by Rhullian Damião on 07/03/22.
//

import SwiftUI

struct SettingLabelView: View {
    var title: String
    var labelImage: Image
    
    var body: some View {
        HStack {
            Text(title.uppercased())
            Spacer()
            labelImage
        }
    }
}

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(title: "FRUCTUS", labelImage: Image.systemInfoCircle)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
