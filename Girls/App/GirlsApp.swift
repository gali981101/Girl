//
//  GirlsApp.swift
//  Girls
//
//  Created by Terry Jason on 2026/1/14.
//

import SwiftUI

@main
struct GirlsApp: App {
    
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
