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
                    // Section 1
                    GroupBox(
                        label: SettingsLabelView(text: "Fructus", image: "info.circle"),
                        content: {
                            Divider().padding(.vertical,2)
                            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:80,height: 80)
                                    .cornerRadius(9)
                                Text("Most fruits are naturally low in fat, sodium, and calaroies, None have cholesterol. Fruits are sources of many essential nutrients, including postassium, dietary fiber, vitamins, and much more.")
                                    .font(.footnote)
                            })
                        }
                    )
                    // Section 2
                    
                    // Section 3
                    
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
