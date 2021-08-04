//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ali Hassan on 8/4/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    // MARK - BODY
    var body: some View {
        TabView{
           
            ForEach(fruits){ item in
                FruitCardView(fruit: item)
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
