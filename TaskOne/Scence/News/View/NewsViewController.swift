//
//  NewsViewController.swift
//  TaskOne
//
//  Created by Ahmed Elmemy on 08/08/2021.
//

import UIKit
import SKActivityIndicatorView
final class NewsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var configurator = NewsConfiguratorImplementation()
    
    var presenter: NewsPresenter?
    
    // MARK: - UIViewController Events
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(NewsViewController: self)
        presenter?.viewDidLoad()
        
        setupTableView()
    }
    
}



extension NewsViewController: NewsView {
   
    
  
 
    func showInteractor() {
        SKActivityIndicator.show()
    }
    
    func hideInteractor() {
        SKActivityIndicator.dismiss()
    }
    
    func fetchingDataSuccess() {
        self.tableView.reloadData()
    }
    
    
    func showEror(error: String) {
        print(error)
    }
    
    
    func navigateToDetails(item: NewsModel) {
        
    }
}
