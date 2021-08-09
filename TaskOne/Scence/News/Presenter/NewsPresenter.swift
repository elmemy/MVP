//
//  NewsPresenter.swift
//  TaskOne
//
//  Created by Ahmed Elmemy on 08/08/2021.
//

import Foundation

protocol NewsView: AnyObject {
  
    func showInteractor()
    func hideInteractor()
    func fetchingDataSuccess()
    func showEror(error:String)
    func navigateToDetails(item:NewsModel)
}


protocol NewsCellView {
    func displayTitle(name:String)
    func displayDesc(desc:String)
    func displayAuthor(author:String)
}

protocol NewsPresenter {
    func viewDidLoad()
    func numberOfRow() -> Int
    func configure(cell: NewsCellView, forRow row: Int)
    func goTo(index: Int)

}



class NewsPresenterImplementation: NewsPresenter {
   
    
    fileprivate weak var view: NewsView?
    internal let router: NewsRouter
    internal let interactor : NewsInteractor
    private var news = [NewsModel]()

    init(view: NewsView,router: NewsRouter,interactor:NewsInteractor) {
        self.view = view
        self.router = router
        self.interactor = interactor
        
    }
    
    
    func viewDidLoad() {
        getData()
    }
    
    
    func numberOfRow() -> Int {
        return self.news.count
    }
    
    func getData(){
        view?.showInteractor()
        interactor.getNews{[weak self] data,error in
            guard let self = self else {return}
            self.view?.hideInteractor()
            if let error = error{
                self.view?.showEror(error: error.localizedDescription)
            }else{
                guard let data = data else {return}
                self.news = [data]
                self.view?.fetchingDataSuccess()
            }
        }
    }
    
 

    
    func configure(cell: NewsCellView, forRow row: Int) {
        let news = news[row]
        cell.displayTitle(name: news.articles![row].title)
        cell.displayDesc(desc: news.articles![row].title)
        cell.displayAuthor(author: news.articles![row].title)
    }
    
    func goTo(index:Int){
        let news = news[index]
        self.router.showDetails(news: news )

    }
    
    
    
   
    
}
