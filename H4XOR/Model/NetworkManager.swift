//
//  NetworkManager.swift
//  H4XOR
//
//  Created by Makwan BK on 4/10/20.
//  Copyright © 2020 Makwan BK. All rights reserved.
//

import Foundation
import UIKit

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            
            URLSession.shared.dataTask(with: url) { data, response, error in
                
                if error != nil {
                    print("err")
                } else if let data = data {
                    if let decoded = try? JSONDecoder().decode(Results.self, from: data) {
                        
                        DispatchQueue.main.async {
                            self.posts = decoded.hits
                        }
                        
                        print("got data!")
                    }
                    
                }
                
            }.resume()
        }
    }
}
