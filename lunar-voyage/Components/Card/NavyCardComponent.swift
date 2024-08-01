//
//  CustomRoundedRectangle.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import SwiftUI

struct NavyCardComponent<Content: View>: View {
    let content:Content
    let linearGradient: LinearGradient
    
    init(
        @ViewBuilder content: () -> Content,
        linearGradient: LinearGradient? = nil
    ){
        self.content = content();
        self.linearGradient = linearGradient ?? LinearGradient(colors: [Color("NavyGalaxy")], startPoint: .top, endPoint: .bottom)
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 34)
                .fill(linearGradient)
                .opacity(1)
                .shadow(
                    color: Color.white.opacity(0.3),
                    radius: 4
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 34)
                        .stroke(Color.white, lineWidth: 1)
                        .opacity(0.3)
                )
                .padding(12)
            
            content
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
    }
}
