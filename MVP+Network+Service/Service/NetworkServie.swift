//
//  NetworkServie.swift
//  MVP+Network+Service
//
//  Created by rau4o on 1/27/20.
//  Copyright © 2020 rau4o. All rights reserved.
//

import UIKit

protocol NetworkServiceProtocol {
    func getComments(completion: @escaping (Result<[Comment]?,Error>) -> Void)
}

class NetworkService:NetworkServiceProtocol  {
    func getComments(completion: @escaping (Result<[Comment]?, Error>) -> Void) {
        let urlString = "https://jsonplaceholder.typicode.com/comments"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            do {
                let obj = try JSONDecoder().decode([Comment].self, from: data!)
                completion(.success(obj))
            }
            catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
