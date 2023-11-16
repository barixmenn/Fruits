//
//  SettingLabelView.swift
//  Fruits
//
//  Created by Baris Dilekci on 17.11.2023.
//

import SwiftUI

struct SettingLabelView: View {
  // MARK: - PROPERTIES
  
  var labelText: String
  var labelImage: String

  // MARK: - BODY

  var body: some View {
    HStack {
      Text(labelText.uppercased()).fontWeight(.bold)
      Spacer()
      Image(systemName: labelImage)
    }
  }
}

// MARK: - PREVIEW


#Preview {
    SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
      .previewLayout(.sizeThatFits)
      .padding()
}
