//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Fábio Carvalho on 30/08/2022.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                
                if content != nil {
                    Text(content!)
                    
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                    
                } else {
                    EmptyView()
                }
            } //: HStack
            
        } //: VStack
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content:"Fabio Carvalho")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            
            SettingsRowView(name: "Website", linkLabel: "Farvalho", linkDestination: "google.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
