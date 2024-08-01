//
//  MainTabView.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import SwiftUI

struct TabItemComponent: View {
    var iconName: String = ""
    var title: String = ""
    var isActive: Bool = true
    
    var body: some View {
        HStack(spacing: 10){
            Spacer()
            Image(systemName: iconName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(isActive ? Color("NavyGalaxy") : .black)
                .frame(width: 20, height: 20)
            if isActive{
                Text(title)
                    .font(.system(size: 14))
                    .foregroundColor(isActive ? Color("NavyGalaxy") : .black)
            }
            Spacer()
        }
        .frame(width: isActive ? nil : 60, height: 60)        
        .background(isActive ? Color("SnowBlue") : .clear)
        .cornerRadius(35)
    }
}

