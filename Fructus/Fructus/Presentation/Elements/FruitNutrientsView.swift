//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Fábio Carvalho on 30/08/2022.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id:\.self) { item in
                    Divider()
                        .padding(.vertical, 2)
            
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        } //: Group
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                        
                    } //: HStack
                } //: ForEach
            } //: DisclosureGroup
        } //: GroupBox
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
