//
//  News.swift
//  NewsAppiCodeWave
//
//  Created by Ricky Primayuda Putra on 16/04/25.
//

struct NewsResponse: Codable {
    var news: [News]
}

struct News: Identifiable, Codable {
    
    let id: Int
    let headline: String
    let abstract: String
    let body: String
    let author: String
    let section: String
    let date: String
    let article_uri: String
    let pfd_uri: String
    
}
