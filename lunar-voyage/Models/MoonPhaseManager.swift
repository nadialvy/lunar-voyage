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
    
    func postMoonPhase(){
        let currentDate = getCurrentDate()
        let style = MoonPhaseStyle(moonStyle: "sketch", backgroundStyle: "stars", backgroundColor: "red", headingColor: "white", textColor: "white")
        let observer = MoonPhaseObserver(latitude: 6.56774, longitude: 79.88956, date: currentDate)
        let view = MoonPhaseView(type: "landscape-simple", orientation: "south-up")
        
        let reqBody = MoonPhaseRequestBody(format: "png", style: style, observer: observer, view: view)
        guard let jsonReqBody = try?  JSONEncoder().encode(reqBody) else {
            print("error")
            return
        }
        
        var request = URLRequest(url: URL(string: "\(ASTRONOMY_API_BASE_URL)/studio/moon-phase")!)
        request.method = .post
        request.headers = headersWithBasicAuth
        request.httpBody = jsonReqBody
        
        
        AF.request(request).validate().responseDecodable (of: MoonPhase.self) { response in
            switch response.result {
            case.success(let data):
                self.moonPhase = data
            case.failure(let error):
                print(error)
            }
        }
        
    }
    
    func getCurrentDate() -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat="yyyy-MM-dd"
        let currentDate = Date()
        return dateFormatter.string(from: currentDate)
    }
}
