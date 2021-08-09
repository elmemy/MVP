//
//  NewsDetailsPresenter.swift
//  TaskOne
//
//  Created by Ahmed Elmemy on 08/08/2021.
//

import Foundation

protocol NewsDetailsView: AnyObject {

}


protocol NewsDetailsCellView {
    
}

protocol NewsDetailsPresenter {
    func viewDidLoad()
    func configure(cell: NewsDetailsCellView, forRow row: Int)
}

class NewsDetailsPresenterImplementation: NewsDetailsPresenter {
    fileprivate weak var view: NewsDetailsView?
    let router: NewsDetailsRouter
    let interactor : NewsDetailsInteractor
    private let news: NewsModel

    
    init(view: NewsDetailsView,router: NewsDetailsRouter,interactor:NewsDetailsInteractor, news: NewsModel) {
        self.view = view
        self.router = router
        self.interactor = interactor
        self.news
            = news
    }

    
    func viewDidLoad() {
        print(news.articles)
    }
    
    func configure(cell: NewsDetailsCellView, forRow row: Int) {
       
    }

}
