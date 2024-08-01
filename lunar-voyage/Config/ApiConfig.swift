//
//  ApiCondig.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 01/08/24.
//

import Foundation
import Alamofire

let NASE_BASE_URL="https://api.nasa.gov/planetary"
let ASTRONOMY_API_BASE_URL="https://api.astronomyapi.com/api/v2"

let creds = "\(ASTRONOMY_API_APP_ID):\(ASTRONOMY_API_APP_SECRET)".data(using: String.Encoding.utf8)!
let base64Creds = creds.base64EncodedString(options: [])

let headersWithBasicAuth:HTTPHeaders = [
    "Content-Type": "application/json",
    "Authorization": "Basic \(base64Creds)"
]


