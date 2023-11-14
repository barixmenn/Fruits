//
//  FruitCardView.swift
//  Fruits
//
//  Created by Baris Dilekci on 14.11.2023.
//

import SwiftUI

struct FruitCardView: View {
    
//MARK: - PROPERTIES
    @State private var isAnimating : Bool = false
    
//MARK: - BODY
    var body: some View {
        ZStack {
            
            VStack(spacing: 20, content: {
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text("Blueberry")
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 2, x: 2, y: 2)
                
                Text("Blueberries are sweet, nutritiuos  and wildly popular fruit all over the world.")
                    .foregroundStyle(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(width: 400)
                StartButtonView()
            }) //: VSTACK
        } //: ZSTACK
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"),Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

//MARK: - PREVIEW
#Preview {
    FruitCardView()
        .previewLayout(.fixed(width: 320, height: 640))
}
