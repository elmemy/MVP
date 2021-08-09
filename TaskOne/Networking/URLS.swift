//
//  URLS.swift
//  MyFarm
//
//  Created by Ahmed Elmemy on 24/06/2021.
//

import Foundation

struct URLs {
    
    //Base URL
    static let BASE = "https://yarmouk.aait-sa.com/api/"
    static let host = "https://yarmouk.aait-sa.com/"
    static let link = "https://yarmouk.aait-sa.com/"

    static let port = "4548"
    
    static let Google_GeoCoding = "https://maps.googleapis.com/maps/api/geocode/json?latlng="
 
    static let Login           = BASE + "sign-in"
    static let register        = BASE + "user/register"
    static let cities          = BASE + "get-cities"
    static let companies       = BASE + "get-companies"
    static let siteData        = BASE + "get-companies"
    
    
}
