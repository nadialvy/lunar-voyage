//
//  Apod.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import SwiftUI

struct ApodView: View {
    
    var apodData: Apod
    
    var body: some View {
        VStack{
            Text("Astronomi Photo Of The Day")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.white)
                .padding()
            AsyncImage(url: URL(string: apodData.thumbnail_url)){phase in
                switch phase {
                case .empty: ProgressView()
                        .tint(.white)
                        .frame(width: 200, height: 200)
                        .padding()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 280, height: 220)
                        .cornerRadius(10)
                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                @unknown default:
                    EmptyView()
                }
            }
            Text("\(apodData.title) (\(apodData.date))")
                .foregroundStyle(.white)
                .fontWeight(.semibold)
                .padding()
            Text("\(String(apodData.explanation.prefix(100)))...")
                .foregroundStyle(.white)
                .padding(.horizontal)
                .padding(.bottom)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        .padding()
    }
}

#Preview {
    ApodView(
        apodData: Apod(date: "-", explanation: "-", media_type: "-", service_version: "-", thumbnail_url: "-", title: "-", url: "-")
    )
}
