//
//  ProductModel.swift
//  Touchdown
//
//  Created by Nikolay  Yuchormanski on 3.05.24.
//

import SwiftUI

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    //Computed prop
    
    var productColor: Color {
        return Color(red: color[0], green: color[1], blue: color[2])
    }
    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[2] }
    
    var productPrice: String {
        return "$\(price)"
    }
}
