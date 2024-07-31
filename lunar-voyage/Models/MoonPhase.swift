//
//  MoonPhase.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 31/07/24.
//

import Foundation

struct DataMoonPhaseResponse: Codable {
    var imagaeUrl: String
}

struct MoonPhase: Codable {
    var data: DataMoonPhaseResponse
}
