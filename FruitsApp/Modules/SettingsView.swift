//
//  SettingsView.swift
//  FruitsApp
//
//  Created by Rhullian Damião on 07/03/22.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: SECTION 1
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image.logo
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essentials nutrients, including potassium, dietary fiber, vitamins, and much more")
                                .font(.footnote)
                        }
                    } label: {
                        SettingLabelView(title: "FRUCTUS", labelImage: .systemInfoCircle)
                    }
                    
                    // MARK: SECTION 2
                    
                    // MARK: SECTION 3
                }//:VSTACK
                .navigationTitle("Settings")
                .padding()
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image.systemXMark
                        }
                    }//: TOOLBAR ITEM
                }//:TOOLBAR
            }//: SCROLL VIEW
        }//: NAVIGATION VIEW
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
