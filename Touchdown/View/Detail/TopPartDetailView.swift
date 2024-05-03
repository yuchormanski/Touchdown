//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Nikolay  Yuchormanski on 3.05.24.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    @State private var isAnimated: Bool = false
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            //PRICE
            VStack (alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                Text(shop.selectedProduct?.productPrice ??
                    sampleProduct.productPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)

            })
            .offset(y: isAnimated ? -50 : -75)
            
            
               Spacer()
            
            //PHOTO
            Image(shop.selectedProduct?.image ?? 
                sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimated ? 0 : -35)
            
        })//: HStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimated.toggle()
            }
        })
    }
}

//MARK: - PREVIEW
#Preview (traits: .sizeThatFitsLayout){
    TopPartDetailView()
        .environmentObject(Shop())
        .padding()
        .background(colorBackground)
}
