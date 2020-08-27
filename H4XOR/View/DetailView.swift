//
//  DetailView.swift
//  H4XOR
//
//  Created by Makwan BK on 4/10/20.
//  Copyright © 2020 Makwan BK. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String
    
    var body: some View {
        WebView(request: URLRequest(url: URL(string: url)!))
    }
 
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
