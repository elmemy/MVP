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
    func NoData()
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
    func didSelect(index: Int)
    func pagination(index:Int)
    func getPagiateData()

}



class NewsPresenterImplementation: NewsPresenter {

    
    fileprivate weak var view: NewsView?
    internal let router: NewsRouter
    internal let interactor : NewsInteractor
    private var news: [Articles] = []
    
    private var page: Int = 1
    private var isLast: Bool = false

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
        interactor.getNews(page: page){[weak self] data,error in
            guard let self = self else {return}
            self.view?.hideInteractor()
            if let error = error{
                self.view?.showEror(error: error.localizedDescription)
            }else{
                guard let data = data else {return}
                self.page += 1
                self.news = data.articles ?? []
                if self.news.count < 20{
                    self.isLast = true
                }else{
                    self.isLast = false
                }
                
                if self.news.count == 0{
                    self.view?.NoData()
                    
                }else{
                    self.view?.fetchingDataSuccess()
                }
            }
        }
    }
    
 

    
    func configure(cell: NewsCellView, forRow row: Int) {
        let news = self.news[row]
        cell.displayTitle(name: news.title)
        cell.displayDesc(desc: news.description ?? "")
        cell.displayAuthor(author: news.author ?? "")
    }
    
    func didSelect(index:Int){
        let news = self.news[index]
        self.router.showDetails(news: news )

    }
    
    
    func pagination(index: Int) {
        
        if index + 1 == self.news.count && (index + 1) % 20 == 0 && !self.isLast {
            self.getData()
        }
    }
    
    func getPagiateData() {
        self.page = 1
        self.news = []
        self.isLast = false
        self.getData()
    }
    
   
    
    
   
    
}
