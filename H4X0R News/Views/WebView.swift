//
//  WebView.swift
//  H4X0R News
//
//  Created by macmini41 on 27/02/24.
//

import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    //it will create UIkit WebView and turn it into swiftUI WebView
    func makeUIView(context: Context) -> some UIView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                if let view = uiView as? WKWebView {
                    view.load(request)
                }
            }
        }
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(urlString: "https://www.google.com")
    }
}
