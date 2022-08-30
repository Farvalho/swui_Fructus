//
//  SettingsView.swift
//  Fructus
//
//  Created by Fábio Carvalho on 30/08/2022.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width:80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None of them have any cholesterol, and they are sources of many essential nutrients including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                            
                        } //: HStack
                        
                    } label: {
                       SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                        
                    } //: GroupBox
                    
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        Text("You can restart the application by toggling this switch. This will make the onboarding process start over.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted!".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                                
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    } label: {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                        
                    } //: GroupBox
                    
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "Fabio Carvalho")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "Website", linkLabel: "Farvalho", linkDestination: "google.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.0")
                        
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                        
                    } //: GroupBox

                    
                } //: VStack
                
            } //: ScrollView
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                        
                    }) {
                        Image(systemName: "xmark")
                    }
                }
            }
            .padding()
            
        } //: NavigationView
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
