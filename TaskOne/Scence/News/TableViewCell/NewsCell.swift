//
//  NewsCell.swift
//  TaskOne
//
//  Created by Ahmed Elmemy on 08/08/2021.
//

import UIKit

class NewsCell: UITableViewCell ,NewsCellView{
    
 
    

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        selectionStyle = .none
    }

 
    
    
    func displayTitle(name: String) {
        self.titleLabel.text = name
    }
    
    func displayDesc(desc: String) {
        self.descLabel.text = desc
    }
    
    func displayAuthor(author: String) {
        self.authorLabel.text = author
    }
}
