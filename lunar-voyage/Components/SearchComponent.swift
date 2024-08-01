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
                        .font(.custom("sd galaxy", size: 48))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)
                    Text("Travel the galaxy")
                        .foregroundStyle(.white)
                        .font(.custom("Montserrat", size: 16))
                }
                Spacer()
            }
            TextField("", text: $searchValue, prompt: Text("Search").foregroundStyle(.white)).font(.custom("Montserrat", size: 16))
                .textFieldStyle(RoundedTextFieldStyle())
                .padding(.top)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        .padding(32)
    }
}

#Preview {
    SearchComponent()
}
