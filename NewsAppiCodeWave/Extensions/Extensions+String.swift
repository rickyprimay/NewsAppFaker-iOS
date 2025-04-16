//
//  Extensions+String.swift
//  NewsAppiCodeWave
//
//  Created by Ricky Primayuda Putra on 16/04/25.
//

import Foundation

extension String {
    
    var stripHTML: String {
        let withoutHTML = self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression)
        let withoutNbsp = withoutHTML.replacingOccurrences(of: "&nbsp;", with: " ")
        return withoutNbsp
    }
    
}
