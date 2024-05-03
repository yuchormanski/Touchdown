//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Nikolay  Yuchormanski on 3.05.24.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? 
                sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
                
        })//: VStsck
        .foregroundStyle(.white)
    }
}

//MARK: - PREVIEW
#Preview (traits: .sizeThatFitsLayout){
    HeaderDetailView()
        .environmentObject(Shop())
        .padding()
        .background(colorBackground)
}
