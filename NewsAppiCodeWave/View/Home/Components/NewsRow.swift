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
        VStack(alignment: .leading, spacing: 8) {
            Text(news.headline)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
                .lineLimit(2)
            
            Text(news.abstract)
                .font(.body)
                .foregroundColor(.gray)
                .lineLimit(3)
            
            HStack {
                Text("By \(news.author)")
                    .font(.caption)
                    .foregroundColor(.blue)
                Spacer()
                Text(news.date)
                    .font(.caption2)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.systemBackground))
                .shadow(color: Color.black.opacity(0.05), radius: 6, x: 0, y: 4)
        )
        .padding(.horizontal)
    }
}

