//
//  FructusApp.swift
//  Fructus
//
//  Created by Ali Hassan on 8/4/21.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnborading: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnborading {
                OnboardingView()
            }else {
                ContentView()
            }
        }
    }
}
