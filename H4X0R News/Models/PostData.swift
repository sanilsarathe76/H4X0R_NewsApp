////
////  PostData.swift
////  H4X0R News
////
////  Created by macmini41 on 21/02/24.
////
//
//import Foundation
//
//struct Results: Codable {
//    let exhaustive: exhaustiveData?
//    let exhaustiveNbHits: Bool?
//    let exhaustiveTypo: Bool?
//    let hits: [Post]?
//    let hitsPerPage: Int?
//    let nbHits: Int?
//    let nbPages: Int?
//    let page: Int?
//    let params: String?
//    let processingTimeMS: Int?
//    let processingTimingsMS: processingTimingsMSData?
//    let query: String?
//    let serverTimeMS: Int?
//}
//
//struct Post: Codable, Identifiable {
//    var id: String {
//        return objectID
//    }
//    let author: String
//    let objectID: String
//    let points: Int
//    let title: String
//    let url: String
//}
//
//struct processingTimingsMSData: Codable {
//    let request: roundTripData?
//}
//
//struct roundTripData: Codable {
//    let roundTrip: Int?
//}
//
//struct OtherData: Codable {
//    let author: authorData
//    let title: titleData
//    let url: urlData
//}
//
//struct authorData: Codable {
//    let matchLevel: String
//    let matchedWords: [matchWordsData]
//    let value: String
//}
//
//struct exhaustiveData: Codable {
//    let nbHits: Bool
//    let typo: Bool
//}
//
//struct titleData: Codable {
//    let matchLevel: String
//    let matchedWords: [matchWordsData]
//    let value: String
//}
//
//struct urlData: Codable {
//    let matchLevel: String
//    let matchedWords:[matchWordsData]
//    let value: String
//}
//
//struct matchWordsData: Codable {
//    
//}
