//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Nikolay  Yuchormanski on 3.05.24.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: 15, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }//: Loop
            })//: H Grid
            .frame(height: 200)
            .padding(15)
        })//
    }
}

//MARK: - PREVIEW
#Preview (traits: .sizeThatFitsLayout){
    BrandGridView()
        .padding()
        .background(colorBackground)
}
