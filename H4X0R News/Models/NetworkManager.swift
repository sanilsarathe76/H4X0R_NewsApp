//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by macmini41 on 21/02/24.
//
//crate url
//create session
//assign datatask to a session
//run session


import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            performRequest(with: url)
        }
    }
    
    func performRequest(with url: URL) {
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, response, error) in
            if let safeError = error {
                print(safeError.localizedDescription)
            }
            
            if let safeData = data {
                let decodedData = self.parseJSON(data: safeData)
                print(decodedData)
            }
        }
        task.resume()
    }
    
    func parseJSON(data: Data) -> Results {
        let decoder = JSONDecoder()
        do {
            let results = try decoder.decode(Results.self, from: data)
            return results
        } catch {
            print(error.localizedDescription)
            return Results(exhaustiveNbHits: false, hits: [])
        }
    }
}
