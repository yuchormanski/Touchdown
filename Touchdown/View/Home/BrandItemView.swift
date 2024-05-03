//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Nikolay  Yuchormanski on 3.05.24.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - PROPERTIES
    let brand: Brand
    
    //MARK: - BODY
    var body: some View {
        
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
    }
}

//MARK: - PREVIEW
#Preview ( traits: .sizeThatFitsLayout){
    BrandItemView(brand: brands[0])
        .padding()
        .background(colorBackground)
}
