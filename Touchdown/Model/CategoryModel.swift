//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Nikolay  Yuchormanski on 1.05.24.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
