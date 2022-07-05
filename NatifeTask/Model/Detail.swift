//
//  Detail.swift
//  NatifeTask
//
//  Created by Maksim Skrypka on 05.07.2022.
//

import Foundation

struct DetailPost: Codable {
    let detailPost: Detail
}

struct Detail: Codable {
    let postID, timeshamp: Int
    let title, text: String
    let postImage: String
    let likesCount: Int
}
