//
//  Network.swift
//  NatifeTask
//
//  Created by Maksim Skrypka on 02.07.2022.
//

import Foundation

class Network {
    // MARK: Подключение к серверу
    func fetchPost(comp: @escaping ([Post]) -> ()) {
        let api = URL(string: "https://raw.githubusercontent.com/anton-natife/jsons/master/api/main.json")
        
        URLSession.shared.dataTask(with: api!) { data, response, error in
            if error != nil {
                print("error")
                return
            }
            do {

            let result =  try JSONDecoder().decode(PostArray.self, from: data!)
                comp(result.posts)
            } catch {
                
            }
        } .resume()
    }
    }
