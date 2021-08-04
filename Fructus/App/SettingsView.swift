//
//  SettingsView.swift
//  Fructus
//
//  Created by Ali Hassan on 8/4/21.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack(spacing: 20){
                    Text("Hellow")
                }
            }.navigationBarTitle("Settings", displayMode:.large)
            .navigationBarItems(trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
            }))
            .padding()
           
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
