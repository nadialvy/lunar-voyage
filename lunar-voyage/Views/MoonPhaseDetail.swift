//
//  MoonPhaseDetail.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 31/07/24.
//

import SwiftUI

struct MoonPhaseDetail: View {
    @EnvironmentObject var moonPhaseManager: MoonPhaseManager
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: moonPhaseManager.moonPhase?.data.imageUrl ?? "" )){ phase in
                switch phase {
                case.empty:
                    ProgressView()
                        .frame(width: 300, height: 300)
                case.success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                        .padding()
                case.failure:
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 250)
                @unknown default:
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    MoonPhaseDetail()
        .environmentObject(MoonPhaseManager())
}
