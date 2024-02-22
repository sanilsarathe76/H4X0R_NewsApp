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
//        TextField("", text: $text)
//            .padding()
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.cyan)
        
        List(self.posts) { post in
            Text(post.hits?.first?.title ?? "Data Not Loading")
        }
        .navigationBarTitle("H4X0R NEWS")
    }
}

struct CustomList_Previews: PreviewProvider {
    static var previews: some View {
        CustomList(text: .constant(""))
    }
}
