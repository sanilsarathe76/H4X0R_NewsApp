//
//  ContentView.swift
//  H4X0R News
//
//  Created by macmini41 on 21/02/24.
//

import SwiftUI

struct ContentView: View {
//    @EnvironmentObject var settings: GameSettings

    @ObservedObject var networkManager = NetworkManager()
    
    @State var textData = ""
    
    var body: some View {
        VStack {
            CustomList(text: $textData, posts: networkManager.posts)
//            Text(textData)
//                .frame(maxWidth: .infinity)
//                .frame(height: 50)
//                .background(.red)
//                .padding(.horizontal, 50)
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
