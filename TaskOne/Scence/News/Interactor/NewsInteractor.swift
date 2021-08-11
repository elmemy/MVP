//
//  NewsInteractor.swift
//  TaskOne
//
//  Created by Ahmed Elmemy on 08/08/2021.
//

import Foundation

 class NewsInteractor {
    
    func getNews(page:Int,completionHandler: @escaping (NewsModel?, Error?) -> ()) {

        var itemResponse: CallResponse<NewsModel> {
            return {[weak self] (response) in
                switch response {
                case .failure(let error):
                    completionHandler(nil, error)
                case .success(let news):
                    completionHandler(news, nil)
                }
            }
        }
      
            // creating request with the builder enum
            APIRouter.news.send(NewsModel.self, then: itemResponse)
        
        
   
    }
 }
