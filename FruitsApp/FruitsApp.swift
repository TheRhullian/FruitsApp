//
//  FruitsAppApp.swift
//  FruitsApp
//
//  Created by Rhullian Damião on 06/03/22.
//

import SwiftUI

@main
struct FruitsApp: App {
    // MARK: - Storage
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
