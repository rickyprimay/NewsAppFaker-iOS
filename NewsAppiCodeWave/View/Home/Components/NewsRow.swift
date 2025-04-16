//
//  NewsRow.swift
//  NewsAppiCodeWave
//
//  Created by Ricky Primayuda Putra on 16/04/25.
//

import SwiftUI

struct NewsRow: View {
    let news: News
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(news.headline)
                .font(.headline)
                .foregroundColor(.primary)
                .lineLimit(2)
            
            Text(news.abstract)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .lineLimit(2)
            
            Text("By \(news.author)")
                .font(.caption)
                .foregroundColor(.blue)
        }
        .padding(.horizontal)
    }
}
