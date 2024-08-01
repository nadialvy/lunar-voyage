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
        NavigationView {
            ScrollView{
                SearchComponent()
                
                
                ScrollView (.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(0..<planetData.count, id: \.self) {idx in
                            NavyCardComponent (
                                content:
                                    {
                                        VStack(alignment: .leading){
                                            Image(planetData[idx].imgUrl)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 140, height: 140)
                                                .padding(.horizontal, 32)
                                                .padding(.top, 20)
                                            VStack(alignment: .leading){
                                                Text(planetData[idx].name)
                                                    .foregroundStyle(.white)
                                                    .font(.custom("Montserrat", size: 24))
                                                    .fontWeight(.semibold)
                                                Text(planetData[idx].shortDesc)
                                                    .foregroundStyle(.white)
                                                    .font(.custom("Montserrat", size: 16))
                                                    .fontWeight(.semibold)
                                                
                                            }
                                            .padding(.leading, 28)
                                            .padding(.bottom, 20)
                                            .padding(.top)
                                            
                                        }
                                    }, linearGradient: LinearGradient(colors: [Color(hex: planetData[idx].startColor), Color(hex: planetData[idx].stopColor)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        }
                    }
                    
                }
                
                
                NavigationLink{
                    MoonPhaseDetail()
                } label : {
                    NavyCardComponent (
                        linearGradient: LinearGradient(colors: [Color(hex: 0x8B9096), Color(hex: 0xECE5DB)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    ){
                        MoonPhaseComponent()
                        
                    }
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
            .background(LinearGradient(colors: [ Color("BlackGalaxy")], startPoint: .top, endPoint: .bottom))
        }
    }
}



#Preview {
    DashboardView()
        .environmentObject(ApodManager())
        .environmentObject(MoonPhaseManager())
}
