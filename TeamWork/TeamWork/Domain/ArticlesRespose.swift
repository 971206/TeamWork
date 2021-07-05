//
//  ArticlesRespose.swift
//  TeamWork
//
//  Created by Mac User on 7/5/21.
//

import Foundation

struct ArticlesResponse: Codable {
    let articlesList: [Articles]
    
    enum CodingKeys: String, CodingKey {
        case articlesList = "articles"
    }
}
