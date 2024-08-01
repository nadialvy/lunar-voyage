//
//  RoundedTextFieldStyle.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import Foundation
import SwiftUI

struct RoundedTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.vertical)
            .padding(.horizontal, 24)
            .background(Color(.white).opacity(0.4))
            .clipShape(Capsule(style: .continuous))
            .foregroundColor(.white)
    }
}
