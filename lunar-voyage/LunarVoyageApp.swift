//
//  LunarVoyageApp.swift
//  LunarVoyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import SwiftUI

@main
struct LunarVoyageApp: App {
    init(){
        for family in UIFont.familyNames {
             print(family)

             for names in UIFont.fontNames(forFamilyName: family){
             print("== \(names)")
             }
        }
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ApodManager())
        }
    }
}
