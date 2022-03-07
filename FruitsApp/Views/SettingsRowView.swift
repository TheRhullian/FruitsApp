//
//  SettingsRowView.swift
//  FruitsApp
//
//  Created by Rhullian Damião on 07/03/22.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - Properties
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack{
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if let content = content {
                    Text(content)
                } else if let linkLabel = linkLabel, let destination = linkDestination,
                    let url = URL(string: destination) {
                    Link(destination: url) {
                        Text(linkLabel)
                        Image.systemArrowSquareUpRight
                            .foregroundColor(.pink)
                    }//:LINK
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }//:IFELSE
            }//:HSTACK
        }//:VSTACK
    }//:BODY
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "John / Jane")
            .previewLayout(.sizeThatFits)
            .padding()
        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "www.swiftuimasterclass.com")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
