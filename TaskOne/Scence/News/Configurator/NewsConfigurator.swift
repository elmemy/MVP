//
//  NewsConfigurator.swift
//  TaskOne
//
//  Created by Ahmed Elmemy on 08/08/2021.
//

import Foundation


protocol NewsConfigurator {
    func configure(NewsViewController:NewsViewController)
}


class NewsConfiguratorImplementation {

    func configure(NewsViewController:NewsViewController) {
        let view = NewsViewController
        let router = NewsRouterImplementation(NewsViewController: view)
        
        let interactor = NewsInteractor()
        let presenter = NewsPresenterImplementation(view: view, router: router,interactor:interactor)
        
        
        NewsViewController.presenter = presenter
    }
    
}
