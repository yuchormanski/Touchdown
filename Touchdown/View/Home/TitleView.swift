//
//  TitleView.swift
//  Touchdown
//
//  Created by Nikolay  Yuchormanski on 3.05.24.
//

import SwiftUI

struct TitleView: View {
    //MARK: - PROPERTIES
    var title: String
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        }//: HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

//MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout){
    TitleView(title: "Helmet")
        .background(colorBackground)
        
}
