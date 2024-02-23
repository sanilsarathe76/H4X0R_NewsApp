//
//  CustomList.swift
//  H4X0R News
//
//  Created by macmini41 on 22/02/24.
//

import SwiftUI

struct CustomList: View {
    
    @Binding var text: String
    var posts: [Results] = []
    
    var body: some View {
        NavigationView {
            List(posts) { post in
                if let title = post.hits?.first?.title, let point = post.hits?.first?.points {
                    HStack {
                        Text(String(point))
                        Text(title)
                    }
                }
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        
//        TextField("", text: $text)
//            .padding()
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.cyan)
        
    }
}

struct CustomList_Previews: PreviewProvider {
    static var previews: some View {
        CustomList(text: .constant(""))
    }
}
