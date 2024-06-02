//
//  DataViewModel.swift
//  Pagination
//
//  Created by Abhineet Chaturvedi on 02/06/24.
//

import Foundation

class DataViewModel : ObservableObject {
    
    @Published var list : [DataModel] = [DataModel]()
    
    var currentPage = 0
    var totalPage = 4
    
    
    func fetchData() async throws {
        let alist = try await APIManager().fetchData(currentPage: currentPage, limit: 10)
        DispatchQueue.main.async {
            self.list.append(contentsOf: alist)
        }
       
    }
}
