//
//  PostData.swift
//  H4X0R News
//
//  Created by macmini41 on 21/02/24.
//

import Foundation

struct Results: Codable {
    let exhaustiveNbHits: Bool?
    let exhaustiveTypo: Bool?
    let hits: [Post]?
}

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let author: String
    let objectID: String
    let points: Int
    let title: String
    let url: String
//    let _highlightResult: OtherData
}

//struct OtherData: Decodable {
//    let author: authorData
//    let title: titleData
//    let url: urlData
//}
//
//struct authorData: Decodable {
//    let matchLevel: String
//    let matchedWords: [matchWordsData]
//    let value: String
//}
//
//struct titleData: Decodable {
//    let matchLevel: String
//    let matchedWords: [matchWordsData]
//    let value: String
//}
//
//struct urlData: Decodable {
//    let matchLevel: String
//    let matchedWords:[matchWordsData]
//    let value: String
//}
//
//struct matchWordsData: Decodable {
//
//}
