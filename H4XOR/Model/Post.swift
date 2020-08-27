//
//  Post.swift
//  H4XOR
//
//  Created by Makwan BK on 4/10/20.
//  Copyright © 2020 Makwan BK. All rights reserved.
//

import Foundation
import UIKit


struct Results: Codable {
    let hits : [Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let points: Int
    let url: String?
    let author: String
    let created_at: String
    let objectID: String

}


