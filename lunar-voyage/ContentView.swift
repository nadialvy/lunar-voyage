//
//  ContentView.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab = 0
    var body: some View {
        ZStack(alignment: .bottom){
            TabView(selection: $selectedTab){
                DashboardView()
                    .tag(0)
                    .toolbarBackground(.hidden, for: .tabBar)
                                    
                OrbitingView()
                    .tag(1)

                WeatherView()
                    .tag(2)
            }
            TabViewComponent(selectedTab: $selectedTab)
            
        }
        .background(.clear)
    }
}


#Preview {
    ContentView()
        .environmentObject(ApodManager())
}
