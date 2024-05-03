//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Nikolay  Yuchormanski on 3.05.24.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - PROPERTIES
    let product: Product
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            //PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }//: ZStack
            .background(product.productColor)
            .cornerRadius(12)
            
            //NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            //PRICE
            Text(product.productPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
            
            
        })//: VStack
    }
}

//MARK: - PREVIEW
#Preview ( traits: .fixedLayout(width: 200, height: 300)){
    ProductItemView(product: products[0])
        .padding()
        .background(colorBackground)
}
