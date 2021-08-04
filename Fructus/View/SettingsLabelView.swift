//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Ali Hassan on 8/4/21.
//

import SwiftUI

struct SettingsLabelView: View {
    var text: String
    var image: String
    var body: some View {
        HStack {
            Text(text.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: image)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(text: "Fructus", image: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
