//
//  Shop.swift
//  Touchdown
//
//  Created by Nikolay  Yuchormanski on 3.05.24.
//

import Foundation


class Shop : ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
