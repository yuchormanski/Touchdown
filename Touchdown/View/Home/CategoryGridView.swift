//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Nikolay  Yuchormanski on 1.05.24.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center,spacing: columnSpacing,pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)) {
                    ForEach(categories) {category in
                        CategoryItemView(category: category)
                    }
                }
            })//: LazyHGrid
            .frame( height: 140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
        })//: Scroll
    }
}

//MARK: - PREVIEW
#Preview (traits: .sizeThatFitsLayout){
    CategoryGridView()
        .padding()
        .background(colorBackground)
}
