//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Nikolay  Yuchormanski on 3.05.24.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    //MARK: - PROPERTIES
    @State private var counter: Int = 0
    
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter > 0 {
                    counter -= 1
                    feedback.impactOccurred()
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            .disabled(counter == 0)
            .opacity(counter == 0 ? 0.2 : 1)
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    counter += 1
                    feedback.impactOccurred()
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            .disabled(counter == 100)
            .opacity(counter == 100 ? 0.2 : 1)
            
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundStyle(.pink)
            })
                
        })//: HStack
        .font(.system(.title, design: .rounded))
        .foregroundStyle(.black)
        .imageScale(.large)
    }
}

//MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    QuantityFavoriteDetailView()
        .padding()
        .background(colorBackground)
}
