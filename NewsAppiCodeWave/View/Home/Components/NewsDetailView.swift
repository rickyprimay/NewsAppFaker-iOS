//
//  NewsDetailView.swift
//  NewsAppiCodeWave
//
//  Created by Ricky Primayuda Putra on 16/04/25.
//

import SwiftUI

struct NewsDetailView: View {
    let news: News
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(news.headline)
                    .font(.title)
                    .bold()
                
                Text("By \(news.author) • \(news.date)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Divider()
                
                Text(news.body.stripHTML)
                    .font(.body)
            }
            .padding()
        }
        .navigationTitle("Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}
