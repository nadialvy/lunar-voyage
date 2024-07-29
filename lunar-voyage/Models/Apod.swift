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
}
