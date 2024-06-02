//
//  APIManager.swift
//  Pagination
//
//  Created by Abhineet Chaturvedi on 02/06/24.
//

import Foundation

class APIManager {
    func fetchData(currentPage: Int, limit: Int) async throws -> [DataModel] {
        let urlString = "https://jsonplaceholder.typicode.com/posts?_page=\(currentPage)&_limit=\(limit)"
        let url = URL(string: urlString)!
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([DataModel].self, from: data)
    }
}
