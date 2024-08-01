//
//  MoonPhaseDetail.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 31/07/24.
//

import SwiftUI

struct ToggleStates {
    var oneIsOn: Bool = false
    var twoIsOn: Bool = true
}

struct MoonPhaseDetail: View {
    @State private var item1: Bool = false
    @State private var item2: Bool = false
    @State private var item3: Bool = false
    
    @EnvironmentObject var moonPhaseManager: MoonPhaseManager
    var body: some View {
        ScrollView{
            NavyCardComponent{
                VStack{
                    Text("Moon Phase on \(getCurrentDate()) ")
                        .font(.custom("Montserrat", size: 24))
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .padding(.top, 20)
                        .padding(.horizontal)
                        .multilineTextAlignment(.center)
                    AsyncImage(url: URL(string: moonPhaseManager.moonPhase?.data.imageUrl ?? "https://widgets.astronomyapi.com/moon-phase/generated/7dd167bf43621bd4a7f94722b8c61aae3233020e7bda23f9eb8f5cd4e7e4016b.png" )){ phase in
                        switch phase {
                        case.empty:
                            ProgressView()
                                .frame(width: 300, height: 300)
                        case.success(let image):
                            image
                                .resizable()
                                .cornerRadius(20)
                                .scaledToFill()
                                .frame(width: 200, height: 200)
                                .padding()
                        case.failure:
                            Image(systemName: "photo")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 300, height: 250)
                                .padding()
                        @unknown default:
                            EmptyView()
                        }
                    }
                    GroupBox(label: Text("Never Heard of Moon Phases?"), content: {
                        VStack{
                            DisclosureGroup("Overview of Moon Phases", isExpanded: $item1) {
                                Text("Moon phases are the shapes of the directly sunlit portion of the Moon as viewed from Earth. These phases result from the changing positions of the Moon, Earth, and Sun.")
                            }
                            DisclosureGroup("The Lunar Cycle", isExpanded: $item2) {
                                Text("The lunar cycle lasts about 29.5 days, during which the Moon transitions through all its phases, from New Moon to Full Moon and back.")
                            }
                            DisclosureGroup("Fun Facts and Trivia", isExpanded: $item3) {
                                Text("Did you know? A 'Blue Moon' is the second Full Moon in a calendar month, which happens only once every few years.")
                            }


                        }
                    })
                    .cornerRadius(30)
                    .padding()
                    
                    
                }
                
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(colors: [Color("SnowBlue"), Color("PastelBlue"), Color("LavenderPurple")], startPoint: .top, endPoint: .bottom))
        
    }
    
}

#Preview {
    MoonPhaseDetail()
        .environmentObject(MoonPhaseManager())
}
