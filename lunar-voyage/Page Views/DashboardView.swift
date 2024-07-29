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
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .opacity(0.25)
                    .shadow(radius: 10)
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
