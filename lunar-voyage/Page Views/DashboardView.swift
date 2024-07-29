//
//  DashboardView.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import SwiftUI

struct DashboardView: View {
    @EnvironmentObject var apodManager: ApodManager

    var body: some View {
        ScrollView{
            ZStack{
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
                
                ApodView(apodData: apodManager.apod ?? Apod(
                    date: "N/A",
                    explanation: "No explanation available.",
                    media_type: "N/A",
                    service_version: "N/A",
                    thumbnail_url: nil,
                    title: "No Title",
                    url: nil,
                    hdurl: nil,
                    copyright: nil
                ))
            }
        }
    }
}

#Preview {
    DashboardView()
        .environmentObject(ApodManager())
}
