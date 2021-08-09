//
//  NewsDetailsConfigurator.swift
//  TaskOne
//
//  Created by Ahmed Elmemy on 08/08/2021.
//

import Foundation


protocol NewsDetailsConfigurator {
    func configure(NewsDetailsViewController:NewsDetailsViewController)
}


class NewsDetailsConfiguratorImplementation {

    func configure(NewsDetailsViewController:NewsDetailsViewController, article: Articles) {
        let view = NewsDetailsViewController
        let router = NewsDetailsRouterImplementation(NewsDetailsViewController: view)
        
        let interactor = NewsDetailsInteractor()
        let presenter = NewsDetailsPresenterImplementation(view: view, router: router,interactor:interactor, article: article)
        
        
        NewsDetailsViewController.presenter = presenter
    }
    
}
