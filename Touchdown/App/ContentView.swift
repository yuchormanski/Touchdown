//
//  ContentView.swift
//  Touchdown
//
//  Created by Nikolay  Yuchormanski on 1.05.24.
//

import SwiftUI
//MARK: - PROPERTIES


//MARK: - BODY
struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                    //                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top) // Deprecated in iOS 15
                        .padding(.top, geometry.safeAreaInsets.top) // за да се фиксне разликата на NOTCH-а на всички у/ва
                        .background(Color.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack (spacing: 0){
                            
                            FeaturedTabView()
                                .padding(.vertical, 20)
                            //                                .frame(minHeight: 256)
                                .frame(height: UIScreen.main.bounds.width / 1.475) // same as above
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                }//: Loop
                            })//: Grid
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }//:VStack
                    })//: Scroll
                    
                    
                    
                }//: VStack
                .background(colorBackground.ignoresSafeArea(.all,edges: .all))
            }//: ZStack // за да се качи максимално нагоре, за да зададе цвят
            .ignoresSafeArea(.all, edges: .top)
        }//:GeometryReader
    }
}

//MARK: - PREVIEW
#Preview {
    ContentView()
}
