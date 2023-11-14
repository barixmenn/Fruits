//
//  StartButtonView.swift
//  Fruits
//
//  Created by Baris Dilekci on 14.11.2023.
//

import SwiftUI

struct StartButtonView: View {
  // MARK: - PROPERTIES
  
  
  // MARK: - BODY
  
  var body: some View {
    Button(action: {
    }) {
      HStack(spacing: 8) {
        Text("Start")
        
        Image(systemName: "arrow.right.circle")
          .imageScale(.large)
      }
      .padding(.horizontal, 16)
      .padding(.vertical, 10)
      .background(
        Capsule().strokeBorder(Color.white, lineWidth: 1.25)
      )
    } //: BUTTON
    .accentColor(Color.white)
  }
}
//MARK: - PREVIEW
#Preview {
    StartButtonView()
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
}
