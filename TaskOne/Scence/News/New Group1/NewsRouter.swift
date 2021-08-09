//
//  NewsRouter.swift
//  TaskOne
//
//  Created by Ahmed Elmemy on 08/08/2021.
//

import UIKit


protocol NewsRouter {
  
}

class NewsRouterImplementation: NewsRouter {
    fileprivate weak var NewsViewController: NewsViewController?
    
    init(NewsViewController: NewsViewController) {
        self.NewsViewController = NewsViewController
    }
    
    
}
