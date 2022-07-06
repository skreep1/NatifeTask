//
//  FullPost.swift
//  NatifeTask
//
//  Created by Maksim Skrypka on 06.07.2022.
//

import Foundation

struct DetailPost: Codable {
    let post: Detail
}

struct Detail: Codable {
    let postId: Int
    let timeshamp: Int
    let title: String
    let text: String
    let likes_count: Int
}
