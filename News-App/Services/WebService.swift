//
//  WebServices.swift
//  News-App
//
//  Created by Albert . on 16/09/21.
//

import Foundation

class WebService {
    func getArticels(url: URL, completion: @escaping  ([Article]?) -> ()){
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList {
                    completion(articleList.articles)
                }
                
//                print(articleList?.articles)
            }
        }.resume()
    }
}
