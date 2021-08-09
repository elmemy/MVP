//
//  NewsRouter.swift
//  TaskOne
//
//  Created by Ahmed Elmemy on 08/08/2021.
//

import UIKit


protocol NewsRouter {
    func showDetails(news: NewsModel)

}

class NewsRouterImplementation: NewsRouter {
    fileprivate weak var NewsViewController: NewsViewController?
    
    init(NewsViewController: NewsViewController) {
        self.NewsViewController = NewsViewController
    }
    
    func showDetails(news: NewsModel) {
        let configurator = NewsDetailsConfiguratorImplementation()
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NewsDetailsViewController") as! NewsDetailsViewController
        configurator.configure(NewsDetailsViewController: vc, news: news)
        self.NewsViewController?.show(vc, sender: self)
    }
    
    
}
