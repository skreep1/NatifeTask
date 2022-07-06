//
//  Post.swift
//  NatifeTask
//
//  Created by Maksim Skrypka on 02.07.2022.
//

import Foundation

struct PostArray: Codable {
    let posts: [Post]
}

struct Post: Codable{
    let postId: Int
    let timeshamp: Int
    let title: String
    let preview_text: String
    let likes_count: Int
}
