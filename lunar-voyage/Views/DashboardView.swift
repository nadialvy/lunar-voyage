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
            VStack{
                NavyCardComponent{
                    SearchComponent()
                }
                
                NavyCardComponent{
                    ApodComponent(apodData: apodManager.apod ?? Apod(
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
                
                NavyCardComponent{
                    ApodComponent(apodData: apodManager.apod ?? Apod(
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
}

#Preview {
    DashboardView()
        .environmentObject(ApodManager())
}
