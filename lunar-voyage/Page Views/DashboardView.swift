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

                ApodView(apodData: apodManager.apod)
            }
        }
    }
}

#Preview {
    DashboardView()
        .environmentObject(ApodManager())
}
