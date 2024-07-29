//
//  LunarVoyageApp.swift
//  LunarVoyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import SwiftUI

@main
struct LunarVoyageApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ApodManager())
        }
    }
}
