//
//  NewsDetailsViewController.swift
//  TaskOne
//
//  Created by Ahmed Elmemy on 08/08/2021.
//

import UIKit

final class NewsDetailsViewController: UIViewController {
    
    
    var presenter: NewsDetailsPresenter?
    
    // MARK: - UIViewController Events
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    
}



extension NewsDetailsViewController: NewsDetailsView {}
