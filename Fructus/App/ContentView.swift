//
//  ContentView.swift
//  Fructus
//
//  Created by Ali Hassan on 8/4/21.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    
    @State private var isShowSettings = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(
                        destination: FruitDetailView(fruit:item),
                        label: {
                            FruitRowView(fruit:item)
                                .padding(.vertical,4)
                        })  
                }
            }.navigationTitle("Fruits")
            .navigationBarItems(
                trailing: Button(action: {
                isShowSettings=true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
            .sheet(isPresented: $isShowSettings, content: {
                SettingsView()
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
