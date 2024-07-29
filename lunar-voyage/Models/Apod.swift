//
//  Apod.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import Foundation

struct Apod: Decodable {
    var date: String?
    var explanation: String?
    var media_type: String?
    var service_version: String?
    var thumbnail_url: String?
    var title: String?
    var url: String?
    var hdurl: String?
    var copyright: String?

    enum CodingKeys: String, CodingKey {
        case date
        case explanation
        case media_type
        case service_version
        case thumbnail_url
        case title
        case url
        case hdurl
        case copyright
    }
}
