//
//  NewsDetailsRouter.swift
//  TaskOne
//
//  Created by Ahmed Elmemy on 08/08/2021.
//

import UIKit


protocol NewsDetailsRouter {
  
}

class NewsDetailsRouterImplementation: NewsDetailsRouter {
    fileprivate weak var NewsDetailsViewController: NewsDetailsViewController?
    
    init(NewsDetailsViewController: NewsDetailsViewController) {
        self.NewsDetailsViewController = NewsDetailsViewController
    }
    
    
}
