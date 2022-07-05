//
//  PostDetail.swift
//  NatifeTask
//
//  Created by Maksim Skrypka on 03.07.2022.
//

import Foundation

//struct Welcome: Codable {
//    let post: PostDetail
//}
//
//struct PostDetail: Codable {
//    let postID, timeshamp: Int
//    let title, text: String
//    let postImage: String
//    let likesCount: Int
//
//}

struct PostId: Codable {
    let post: PostDetail
}

struct PostDetail: Codable {
    let postid: Int
    let title: String
}
