//
//  OnboardingView.swift
//  Fructus
//
//  Created by Fábio Carvalho on 29/08/2022.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            } //: ForEach
            
        } //: TabView
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
