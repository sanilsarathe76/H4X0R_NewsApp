//
//  PostData.swift
//  H4X0R News
//
//  Created by macmini41 on 21/02/24.
//

import Foundation

struct Results: Decodable {
    let exhaustiveNbHits: Bool
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
