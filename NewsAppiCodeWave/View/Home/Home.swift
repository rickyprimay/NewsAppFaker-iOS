//
//  Home.swift
//  NewsAppiCodeWave
//
//  Created by Ricky Primayuda Putra on 15/04/25.
//

import SwiftUI

struct Home: View {
    
    @ObservedObject var newsViewModel = NewsViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                if newsViewModel.isLoading {
                    ProgressView("Loading...")
                        .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                        .scaleEffect(1.5)
                } else {
                    List(newsViewModel.news) { newsItem in
                        NavigationLink(destination: NewsDetailView(news: newsItem)) {
                            NewsRow(news: newsItem)
                        }
                        .listRowInsets(EdgeInsets())
                        .padding(.vertical, 8)
                    }
                    .listStyle(PlainListStyle())
                }
            }
            .navigationTitle("News App")
        }
        .onAppear {
            newsViewModel.fetchNews()
        }
    }
}

#Preview {
    Home()
}
