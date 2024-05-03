//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Nikolay  Yuchormanski on 3.05.24.
//

import SwiftUI

struct ProductDetailView: View {
    
    //MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    var body: some View {
        
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 5, content: {
                //NAVBART
                NavigationBarDetailView()
                    .padding(.horizontal)
                //                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top) // Dep iOS 15
                    .padding(.top, geometry.safeAreaInsets.top + 30) // use this instead of above

                //HEADER
                HeaderDetailView()
                    .padding(.horizontal)
                
                //DETAIL TOP PART
                TopPartDetailView()
                    .padding(.horizontal)
                    .zIndex(1)
                
                //DETAIL BOTTOM PART
                
                VStack(alignment: .center, spacing: 0, content: {
                    //RATINGS + SIZES
                    RatingSizesDetailView()
                        .padding(.top, -20)
                        .padding(.bottom, 10)
                    
                    //DESCRIPTION
                    ScrollView(.vertical, showsIndicators: false) {
                        Text(shop.selectedProduct?.description ??
                             sampleProduct.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.leading)
                    }
                    //QUANTITY + FAVORITES
                    QuantityFavoriteDetailView()
                        .padding(.vertical, 10)
                       
                    //ADD TO CART
                    
                    AddToCartDetailView()
                        .padding(.bottom, 20)
                    
                    Spacer()
                })//: VStack
                .padding(.horizontal)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .padding(.top, -105)
                )
                
                
                
            })//: VStack
            .zIndex(0)
            .ignoresSafeArea(.all, edges: .all)
            .background(shop.selectedProduct?.productColor.ignoresSafeArea(.all, edges: .all) ?? sampleProduct.productColor.ignoresSafeArea(.all, edges: .all))
        }
    }//: Geometry readder
}

//MARK: - PREVIEW
#Preview(traits: .fixedLayout(width: 375, height: 812)) {
    ProductDetailView()
        .environmentObject(Shop())
}
