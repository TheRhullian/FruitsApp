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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
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
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish , you can restart the application by toogle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            Text(isOnboarding ? "RESTARTED": "RESTART")
                                .foregroundColor(isOnboarding ? .green : .primary)
                                .fontWeight(.bold)
                        }
                        
                        
                        
                        
                    } label: {
                        SettingLabelView(title: "Customization", labelImage: Image.systemBrush)
                    }

                    
                    // MARK: SECTION 3
                    GroupBox {
                        
                        SettingsRowView(name: "Develop", content: "Rhullian Damião")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compability", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "https://www.swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@4PeeP", linkDestination: "https://www.twitter.com/4peep.oficial")
                        SettingsRowView(name: "SwifUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        
                    } label: {
                        SettingLabelView(title: "Application", labelImage: Image.systemAppsIphone)
                    }

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
