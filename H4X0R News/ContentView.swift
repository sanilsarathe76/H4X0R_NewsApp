//
//  ContentView.swift
//  H4X0R News
//
//  Created by macmini41 on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("H4X0R NEWS")
            .onAppear {
                NetworkManager.shared.fetchData()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post1: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post1(id: "1", title: "Hello"),
    Post1(id: "2", title: "Bonjour"),
    Post1(id: "3", title: "Hola")
]
