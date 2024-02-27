//
//  DetailView.swift
//  H4X0R News
//
//  Created by macmini41 on 26/02/24.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        VStack {
            WebView(urlString: url)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


