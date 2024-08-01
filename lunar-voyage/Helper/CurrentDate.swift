//
//  CurrentDate.swift
//  lunar-voyage
//
//  Created by Nadia Lovely on 01/08/24.
//

import Foundation

func getCurrentDate() -> String{
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat="yyyy-MM-dd"
    let currentDate = Date()
    return dateFormatter.string(from: currentDate)
}

