//
//  DashboardView.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import SwiftUI

struct DashboardView: View {
    @EnvironmentObject var apodManager: ApodManager
    @State var searchValue: String = ""
    
    var body: some View {
        ScrollView{
            VStack{
                CustomRoundedRectangle{
                    VStack{
                        HStack{
                            VStack(alignment: .leading){
                                Text("Let's Explore")
                                    .font(.title)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundStyle(.white)
                                Text("Travel the galaxy")
                                    .foregroundStyle(.white)
                            }
                            Spacer()
                            Image(systemName: "person.crop.circle")
                                .font(.largeTitle)
                            
                        }
                        TextField("", text: $searchValue, prompt: Text("Search").foregroundStyle(.navyGalaxy))
                            .textFieldStyle(RoundedTextFieldStyle())
                            .padding(.top)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .padding(32)
                }
                CustomRoundedRectangle{
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
}

#Preview {
    DashboardView()
        .environmentObject(ApodManager())
}
