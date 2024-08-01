//
//  PlanetConstant.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 01/08/24.
//

import Foundation

struct PlanetConstant {
    var name: String
    var imgUrl: String
    var shortDesc: String
    var startColor: Int
    var stopColor: Int
}

var planetData: [PlanetConstant] = [
    PlanetConstant(name: "Mercury", imgUrl: "mercury", shortDesc: "Small and Hot", startColor: 0xE6902F, stopColor: 0xF6CCB2),
    PlanetConstant(name: "Venus", imgUrl: "venus", shortDesc: "Earth's Twin", startColor: 0xDD603F, stopColor: 0xD2A485),
    PlanetConstant(name: "Earth", imgUrl: "earth", shortDesc: "Supports Life", startColor: 0x2B55C9, stopColor: 0xB6E5A2),
    PlanetConstant(name: "Mars", imgUrl: "mars", shortDesc: "Red Planet", startColor: 0xDA3E37, stopColor: 0xF57F6D),
    PlanetConstant(name: "Jupiter", imgUrl: "jupiter", shortDesc: "Gas Giant", startColor: 0x87471E, stopColor: 0xDFA141),
    PlanetConstant(name: "Saturn", imgUrl: "saturn", shortDesc: "Ringed Planet", startColor: 0xC33D0A, stopColor: 0xF2D899),
    PlanetConstant(name: "Uranus", imgUrl: "uranus", shortDesc: "Icy Giant", startColor: 0x3FAAD3, stopColor: 0xC6E7ED),
    PlanetConstant(name: "Neptune", imgUrl: "neptune", shortDesc: "Windy Blue", startColor: 0x3A56BC, stopColor: 0xC1DAEF)
]
