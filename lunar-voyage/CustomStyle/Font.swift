//
//  Fonts.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 31/07/24.
//

import Foundation
import SwiftUI

struct CustomFontModifier: ViewModifier {
    let size: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(.custom("Montserrat", size: size))
    }
}

extension View {
    func customFont(size: CGFloat) -> some View {
        self.modifier(CustomFontModifier(size: size))
    }
}
