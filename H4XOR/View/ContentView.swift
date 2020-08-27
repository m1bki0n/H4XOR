//
//  ContentView.swift
//  H4XOR
//
//  Created by Makwan BK on 4/10/20.
//  Copyright © 2020 Makwan BK. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url ?? "nil")) {
                    HStack {
                        Text(String(post.points))
                            .font(.system(size: 16))
                        
                        VStack(alignment: .leading) {
                            Text(post.title)
                                .font(.system(size: 20)).fontWeight(.regular)
                            
                            Text("By \(post.author)")
                                .foregroundColor(.secondary)
                                .font(.system(size: 16))
                                .padding([.top, .bottom], 5)
                                
                        }.padding(.leading, 5)
                    }
                }
            }
            .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear(perform: self.networkManager.fetchData)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


