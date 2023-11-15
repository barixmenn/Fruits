//
//  FruitModel.swift
//  Fruits
//
//  Created by Baris Dilekci on 14.11.2023.
//

import SwiftUI

struct Fruit : Identifiable {
    var id = UUID()
    var title: String
    var headline : String
    var image: String
    var gradientColors : [Color]
    var description : String
    var nutrition : [String]
    
    
}
