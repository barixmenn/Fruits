//
//  SettingsView.swift
//  Fruits
//
//  Created by Baris Dilekci on 17.11.2023.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                  //MARK: - SECTION 1
                    GroupBox(
                      label:
                        SettingLabelView(labelText: "Fruit", labelImage: "info.circle")
                    ) {
                      Divider().padding(.vertical, 4)
                      
                      HStack(alignment: .center, spacing: 10) {
                        Image("logo")
                          .resizable()
                          .scaledToFit()
                          .frame(width: 80, height: 80)
                          .cornerRadius(9)
                        
                        Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                          .font(.footnote)
                      }
                    }
                    
                    
                } //: VSCTACK
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "xmark")
                        })
                )
                .padding()
            } //: SCROLL
        } //: NAVIGATION
    }
}


   //MARK: - PREVIEW
#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
        .previewDevice("İphone 15 Pro")
}
