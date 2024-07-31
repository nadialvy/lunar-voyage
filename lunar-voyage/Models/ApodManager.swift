//
//  ApodManager.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import Foundation
import Alamofire

class ApodManager: ObservableObject {
    @Published var apod: Apod?
    
    init(){
        getApod()
    }
    
    func getApod(){
        AF.request("https://api.nasa.gov/planetary/apod?api_key=\(NASA_API_KEY)&thumbs=true")
            .responseDecodable(of: Apod.self){ response in
                if let dataFromNetwork = response.value {
                    self.apod = dataFromNetwork
                }
            }
    }
}
