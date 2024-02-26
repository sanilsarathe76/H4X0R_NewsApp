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

class NetworkManager: ObservableObject {
        
    @Published var posts = [Hits]()
    
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
                guard let decodedData = self.parseJSON(safeData) else { return }
                DispatchQueue.main.async {
                    if let hits = decodedData.hits {
                        self.posts = hits
                    }
                }
            }
        }
        task.resume()
    }
    
    func parseJSON(_ data: Data) -> Results? {
        let decoder = JSONDecoder()
        do {
            let results = try decoder.decode(Results.self, from: data)
            return results
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
