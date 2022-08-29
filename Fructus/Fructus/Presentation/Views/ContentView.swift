//
//  ContentView.swift
//  Fructus
//
//  Created by Fábio Carvalho on 29/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                    
                }//: ForEach
            } //: List
            .navigationTitle("Fruits")
        } //: Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
