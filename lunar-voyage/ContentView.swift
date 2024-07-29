//
//  ContentView.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Image(systemName: "safari")
                        .foregroundColor(Color("NavyGalaxy"))
                }
                .background(LinearGradient(colors: [Color("SnowBlue"), Color("PastelBlue"), Color("LavenderPurple")], startPoint: .top, endPoint: .bottom))
        }
    }
}


#Preview {
    ContentView()
        .environmentObject(ApodManager())
}
