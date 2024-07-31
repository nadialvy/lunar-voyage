//
//  MoonPhase.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 31/07/24.
//

import SwiftUI

struct MoonPhaseComponent: View {
    var body: some View {
        HStack{
            Image("moon")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .padding()
            VStack(alignment: .leading){
                Text("Moon Phase")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                Text("Click to see the details about today's moon phase")
                    .font(.caption)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            }
            .padding()
        }
    }
}

#Preview {
    MoonPhaseComponent()
}
