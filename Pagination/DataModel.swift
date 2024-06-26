//
//  DataModel.swift
//  Pagination
//
//  Created by Abhineet Chaturvedi on 02/06/24.
//

import Foundation


struct DataModel : Hashable, Identifiable, Decodable {

    let userId : Int?
    let id : Int?
    let title : String?
    let body : String?

    enum CodingKeys: String, CodingKey {

        case userId = "userId"
        case id = "id"
        case title = "title"
        case body = "body"
        
    }

//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        userId = try values.decodeIfPresent(Int.self, forKey: .userId)
//        it = try values.decodeIfPresent(Int.self, forKey: .it)
//        title = try values.decodeIfPresent(String.self, forKey: .title)
//        body = try values.decodeIfPresent(String.self, forKey: .body)
//        
//    }

}

