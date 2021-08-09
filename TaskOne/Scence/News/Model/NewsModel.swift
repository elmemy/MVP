//
//  NewsModel.swift
//  TaskOne
//
//  Created by Ahmed Elmemy on 08/08/2021.
//

import Foundation

struct NewsModel: Codable,CodableInit {
    let status : String?
    let totalResults : Int?
    let articles : [Articles]?
}
struct Articles : Codable {
    let source : Source?
    let author : String?
    let title : String
    let description : String?
    let url : String?
    let urlToImage : String?
    let publishedAt : String?
    let content : String?
}
struct Source : Codable {
    let id : String?
    let name : String?
}
