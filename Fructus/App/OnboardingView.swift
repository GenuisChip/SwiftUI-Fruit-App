//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ali Hassan on 8/4/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK - PROPERTIES
    
    
    // MARK - BODY
    var body: some View {
        TabView{
            ForEach(0..<5){  item in 
                FruitCardView()
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
