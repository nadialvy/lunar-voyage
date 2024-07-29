//
//  Search.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import SwiftUI

struct SearchComponent: View {
    @State var searchValue: String = ""

    var body: some View {
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
                    .foregroundStyle(.white)
                
            }
            TextField("", text: $searchValue, prompt: Text("Search").foregroundStyle(.navyGalaxy))
                .textFieldStyle(RoundedTextFieldStyle())
                .padding(.top)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        .padding(32)    }
}

#Preview {
    SearchComponent()
}
