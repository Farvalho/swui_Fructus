//
//  FructusApp.swift
//  Fructus
//
//  Created by Fábio Carvalho on 29/08/2022.
//

import SwiftUI

@main
struct FructusApp: App {
    
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
