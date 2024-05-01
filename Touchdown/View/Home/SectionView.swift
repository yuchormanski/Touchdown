//
//  SectionView.swift
//  Touchdown
//
//  Created by Nikolay  Yuchormanski on 1.05.24.
//

import SwiftUI

struct SectionView: View {
    
    //MARK: - PROPERTIES
    @State var rotateClockwise: Bool
    //MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            Spacer()
        }//: VStack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

//MARK: - PREVIEW
#Preview {
    SectionView(rotateClockwise: false)
        .padding()
        .background(colorBackground)
}
