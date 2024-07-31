//
//  MoonPhaseManager.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 31/07/24.
//

import Foundation
import Alamofire

// manager using class instead struct bcs class is a reference type
class MoonPhaseManager: ObservableObject {
    @Published var moonPhase: MoonPhase?
        
}
