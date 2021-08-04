//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Ali Hassan on 8/4/21.
//

import SwiftUI

struct SettingsRowView: View {
    var title: String
    var value: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack{
                Text(title)
                    .foregroundColor(.gray)
                Spacer()
                if value != nil {
                    Text(value!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                }else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(title: "Developer", value:"Ali Hassan")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(title: "Website",  linkLabel: "Apple", linkDestination: "apple.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
