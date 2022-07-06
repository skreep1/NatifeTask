//
//  Network.swift
//  NatifeTask
//
//  Created by Maksim Skrypka on 02.07.2022.
//

import Foundation

class Network {
    
    private let baseUrl = "https://raw.githubusercontent.com/anton-natife/jsons/master/api/"
    private let fullPostsUrl = "https://raw.githubusercontent.com/anton-natife/jsons/master/api/posts/"
    private let postsUrl = "main.json"
    
    // MARK: Подключение к серверу
    func fetchPost(comp: @escaping ([Post]) -> ()) {
        let url = baseUrl + postsUrl
        let api = URL(string: url)
        
        URLSession.shared.dataTask(with: api!) { data, response, error in
            if error != nil {
                print("error")
                return
            }
            do {

            let result =  try JSONDecoder().decode(PostArray.self, from: data!)
                comp(result.posts)
            } catch {
                print("error")
            }
        } .resume()
    }
}
