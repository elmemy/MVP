//
//  ProjectRouter.swift
//  SwiftCairo-App
//
//  Created by abdelrahman mohamed on 4/21/18.
//  Copyright © 2018 abdelrahman mohamed. All rights reserved.
//

import Foundation
import Alamofire

enum APIRouter: URLRequestBuilder {

    case login(email: String, password: String)
    case register(email: String, password: String, phone: String)
    case news(page:Int)

    // MARK: - Path
    internal var path: String {
        switch self {
        case .login:
            return "login"
        case .register:
            return "register"
        case .news:
            return "everything"
        }
    }

    // MARK: - Parameters
    internal var parameters: Parameters? {
        var params = Parameters.init()
        switch self {
        case .login(let email, let password):
            params["email"] = email
            params["password"] = password
        case .register(let email, let password, let phone):
            params["email"] = email
            params["password"] = password
            params["phone"] = phone
        case .news(let page):
            params["q"] = "apple"
            params["from"] = "2021-07-20"
            params["to"] = "2021-07-28"
            params["apiKey"] = "69ae0054edc94e5dae2ef8c411c1e13f"
            params["pageSize"] = "20"
            params["page"] = "\(page)"

        }
        
        return params
    }
    
    // MARK: - Methods
    internal var method: HTTPMethod {
        switch self {
        case .news:
        return .get
            
        default:
            return .post
        }
        
    }
    
    
    
   
}
