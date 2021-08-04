//
//  FruitModel.swift
//  Fructus
//
//  Created by Ali Hassan on 8/4/21.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition : [String]
}
