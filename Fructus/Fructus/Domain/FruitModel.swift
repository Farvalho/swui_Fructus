//
//  FruitModel.swift
//  Fructus
//
//  Created by Fábio Carvalho on 29/08/2022.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
