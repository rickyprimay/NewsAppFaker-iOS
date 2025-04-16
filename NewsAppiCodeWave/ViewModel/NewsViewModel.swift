//
//  NewsViewModel.swift
//  NewsAppiCodeWave
//
//  Created by Ricky Primayuda Putra on 16/04/25.
//

import Foundation
import Alamofire

class NewsViewModel: ObservableObject {
    
    @Published var news: [News] = []
    
    private var baseUrl = "https://fakenews.squirro.com/"
    
    @Published var isLoading: Bool = true
    
    func fetchNews() {
        
        isLoading = true
        
        guard let url = URL(string: baseUrl + "news/technology") else {
            self.isLoading = false
            return
        }
        
        AF.request(url)
            .validate()
            .responseDecodable(of: NewsResponse.self) { response in
                switch response.result {
                case .success(let result):
                    self.news = result.news
                case .failure(let error):
                    print(error)
                }
                self.isLoading = false
            }
        
    }
    
}
