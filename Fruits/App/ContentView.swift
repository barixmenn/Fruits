//
//  ContentView.swift
//  Fruits
//
//  Created by Baris Dilekci on 14.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    var fruits : [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                                .padding(.vertical,4)
                    }
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
    ContentView()
}
