//
//  WebView.swift
//  H4XOR
//
//  Created by Makwan BK on 4/10/20.
//  Copyright © 2020 Makwan BK. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {
    
    let request : URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ view: WKWebView, context: Context) {
        view.load(request)
    }
}
