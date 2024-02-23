//
//  CustomList.swift
//  H4X0R News
//
//  Created by macmini41 on 22/02/24.
//

import SwiftUI

struct CustomList: View {
    
    @Binding var text: String
    @ObservedObject var networkManager = NetworkManager()
    
    var posts = [Results]()
    
    var body: some View {
        List(posts) { post in
            if let title = post.hits?.first?.title {
                Text(title)
            }
        }
        
        TextField("", text: $text)
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.cyan)
        
        .navigationBarTitle("H4X0R NEWS")
    }
}

struct CustomList_Previews: PreviewProvider {
    static var previews: some View {
        CustomList(text: .constant(""))
    }
}
