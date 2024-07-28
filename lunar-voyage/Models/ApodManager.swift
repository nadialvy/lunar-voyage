//
//  ApodManager.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 29/07/24.
//

import Foundation
import Alamofire

class ApodManager: ObservableObject {
    @Published var apod: Apod = Apod(date: "", explanation: "", media_type: "", service_version: "", thumbnail_url: "", title: "", url: "")
    
    init(){
        getApod()
    }
    
    func getApod(){
        AF.request("https://api.nasa.gov/planetary/apod?api_key=Vazyb9fVSFoRlyB8IdUsmNM200z7SEbnjFQ56cpz&thumbs=true")
            .responseDecodable(of: Apod.self){ response in
                if let dataFromNetwork = response.value {
                    self.apod = dataFromNetwork
                }
            }
    }
}
