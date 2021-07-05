//
//  ArticlesManager.swift
//  TeamWork
//
//  Created by Mac User on 7/5/21.
//

import Foundation

protocol ArticlesManagerProtocol: AnyObject {
    func fetchNews(completion: @escaping (([Articles]) -> Void))
}

class ArticlesManager: ArticlesManagerProtocol {

    func fetchNews(completion: @escaping (([Articles]) -> Void)) {
        let url = "https://run.mocky.io/v3/ab4f4c60-daf3-4e43-8148-8065d1178315"
        NetworkManager.shared.get(url: url) { (result: Result<ArticlesResponse, Error>) in
            switch result {
            case .success(let response):
                completion(response.articlesList)
            case .failure(let error):
                print(error)
            }
        }
    }
}
