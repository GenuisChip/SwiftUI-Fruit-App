//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Ali Hassan on 8/4/21.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    var body: some View {
        NavigationView {
            ScrollView(.vertical){
                VStack(alignment: .center, spacing: 20, content: {
                    // Header
                    FruitHeaderView(fruit: fruit)
                                    
                    VStack(alignment: .leading, spacing: 20, content: {
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                            
                        
                        //Nutrients
                        FruitNutrientsView(fruit: fruit)
                        
                        //SubHeadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //Link
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                    }).padding(.horizontal,20)
                    .frame(maxWidth: 640,alignment: .center)
                    
                })
                .navigationBarTitle(fruit.title,displayMode: .inline)
                .navigationBarHidden(true)
            }
            // Ignore Safe Area
            .edgesIgnoringSafeArea(.top)
        }
        // Make navigatoin style for iPadOs
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
