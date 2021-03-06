//
//  NewsDetailsConfigurator.swift
//  TaskOne
//
//  Created by Ahmed Elmemy on 08/08/2021.
//

import Foundation


protocol NewsDetailsConfigurator {
    func configure(NewsDetailsViewController:NewsDetailsViewController, news: Articles)
}


class NewsDetailsConfiguratorImplementation:  NewsDetailsConfigurator{

    func configure(NewsDetailsViewController:NewsDetailsViewController, news: Articles) {
        let view = NewsDetailsViewController
        let router = NewsDetailsRouterImplementation(NewsDetailsViewController: view)
        
        let interactor = NewsDetailsInteractor()
        let presenter = NewsDetailsPresenterImplementation(view: view, router: router,interactor:interactor,news: news)
        
        
        NewsDetailsViewController.presenter = presenter
    }
    
}
