//
//  ContentView.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ZStack{
                GeometryReader{ proxy in
                    let size = proxy.size
                    
                    Circle()
                        .fill(.blue)
                        .padding(50)
                        .blur(radius: 150)
                        .offset(x: size.width/1.8, y: size.height)
                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)

                    Circle()
                        .fill(.purple)
                        .padding(50)
                        .blur(radius: 120)
                        .offset(x: -size.width/1.8, y: -size.height/10)
                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                }
                
                DashboardView()
                    .tabItem {
                        Image(systemName: "safari")
                    }
            }
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color("NavyGalaxy"), Color("PurpleGalaxy")]), startPoint: .top, endPoint: .bottom
                )
            )

        }
    }
}

#Preview {
    ContentView()
        .environmentObject(ApodManager())
}
