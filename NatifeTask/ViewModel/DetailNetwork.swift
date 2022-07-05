//
//  DetailNetwork.swift
//  NatifeTask
//
//  Created by Maksim Skrypka on 03.07.2022.
//

import Foundation

class DetailNetwork {

    // getApi
        func getApi(comp: @escaping ([Detail]) -> ()) {
            let api = URL(string: "https://raw.githubusercontent.com/anton-natife/jsons/master/api/main.json")
            
            URLSession.shared.dataTask(with: api!) { data, response, error in
                if error != nil {
                    print("error")
                    return
                }
                do {
                let result =  try JSONDecoder().decode(PostDetail.self, from: data!)
                    comp(result.postId)
                } catch {
                    
                }
            } .resume()
        }
        }
