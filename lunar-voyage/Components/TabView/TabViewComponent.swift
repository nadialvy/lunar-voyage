//
//  TabViewComponent.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import SwiftUI

struct TabViewComponent: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack{
            HStack{
                ForEach((TabbedItems.allCases), id: \.self){ item in
                    Button{
                        selectedTab = item.rawValue
                    } label: {
                        TabItemComponent(iconName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
                    }
                }
            }
            .padding(6)
        }
        .frame(height: 70)
        .background(Color("SnowBlue").opacity(0.2))
        .cornerRadius(35)
        .padding(.horizontal, 26)
    }
}
