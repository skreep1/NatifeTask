//
//  DetailPost.swift
//  NatifeTask
//
//  Created by Maksim Skrypka on 04.07.2022.
//

import Foundation

struct DetailPost: Decodable {
    let postID, timeshamp: Int
       let title, text: String
       let postImage: String
       let likesCount: Int
}
