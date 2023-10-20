//
//  ContentView.swift
//  triparty
//
//  Created by 신진호 on 10/20/23.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebView(url: URL(string: "https://dev.yeohaengparty.com/")!)
    }
}


struct WebView: UIViewRepresentable {
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: url))
    }
    var url: URL
    func makeUIView(context: Context) -> WKWebView {
        let webConfig = WKWebViewConfiguration()
        webConfig.defaultWebpagePreferences.allowsContentJavaScript = true
        webConfig.allowsInlineMediaPlayback = true
        return WKWebView(frame: CGRect(x: 0, y: 0, width: 100, height: 100), configuration: webConfig)
    }
}


#Preview {
    ContentView()
}
