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
                    }
            }
        }
}


#Preview {
    ContentView()
        .environmentObject(ApodManager())
}
