//
//  TabItemComponent.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import SwiftUI

enum TabbedItems: Int, CaseIterable {
    case dashboard = 0
    case orbit
    case weather
    
    var title: String {
        switch self{
        case.dashboard:
            return "Home"
        case.orbit:
            return "Orbit"
        case.weather:
            return "Weather"
        }
    }
    
    var iconName: String {
        switch self {
        case.dashboard:
            return "safari"
        case.orbit:
            return "circle.dashed"
        case.weather:
            return "cloud.sun.rain"
        }
        
    }
    
}
