//
//  MoonPhase.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 31/07/24.
//

import Foundation


// === RESPONSE ===
struct DataMoonPhaseResponse: Codable {
    var imageUrl: String
}

struct MoonPhase: Codable {
    var data: DataMoonPhaseResponse
}

// === REQUEST ===
struct MoonPhaseStyle: Codable {
    var moonStyle: String
    var backgroundStyle: String
    var backgroundColor: String
    var headingColor: String
    var textColor: String
}

struct MoonPhaseObserver: Codable {
    var latitude: Float
    var longitude: Float
    var date: String
}

struct MoonPhaseView: Codable {
    var type: String
    var orientation: String
}

struct MoonPhaseRequestBody: Codable {
    var format: String
    var style: MoonPhaseStyle
    var observer: MoonPhaseObserver
    var view: MoonPhaseView
}
