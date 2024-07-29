//
//  CustomRoundedRectangle.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import SwiftUI

struct CustomRoundedRectangle<Content: View>: View {
    let content:Content
    
    init(@ViewBuilder content: () -> Content){
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 34)
                .fill(Color("NavyGalaxy"))
                .opacity(1)
                .shadow(
                    color: Color.white.opacity(0.5),
                    radius: 10
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 34)
                        .stroke(Color.white, lineWidth: 1)
                        .opacity(0.3)
                )
                .padding()
            
            content
                .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)        }
    }
}
