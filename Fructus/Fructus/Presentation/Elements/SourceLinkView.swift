//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Fábio Carvalho on 30/08/2022.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.org")!)
                Image(systemName: "arrow.up.right.square")
                
            } //: HStack
            .font(.footnote)
            
        } //: GroupBox
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
