//
//  SettingsView.swift
//  Fructus
//
//  Created by Ali Hassan on 8/4/21.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack(spacing: 20){
                    
                    // Section 1
                    GroupBox(
                        label: SettingsLabelView(text: "Fructus", image: "info.circle"),
                        content: {
                            Divider().padding(.vertical,2)
                            HStack(alignment: .center, spacing: 10, content: {
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
                    
                    GroupBox(label: SettingsLabelView(text: "Customization", image: "paintbrush"), content: {
                        Divider().padding(.vertical,4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That may it restarts the onboarding process and you will see the welcome screen again.")
                            
                            .font(.footnote)
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }.padding()
                        .background(Color(UIColor.tertiarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        
                       
                    })
                    
                    
                    // Section 3
                    GroupBox(label: SettingsLabelView(text: "Application", image: "apps.iphone"), content: {
                        SettingsRowView(title: "Developer", value: "Ali Hassan")
                        SettingsRowView(title: "Designer", value: "Robert Petras")
                        SettingsRowView(title: "Compatibility", value: "iOS 14")
                        SettingsRowView(title: "Website",linkLabel: "linkedIn",linkDestination: "linkedin.com/ali-weka")
                        SettingsRowView(title: "SwiftUI", value: "2.0")
                    })
                    
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
