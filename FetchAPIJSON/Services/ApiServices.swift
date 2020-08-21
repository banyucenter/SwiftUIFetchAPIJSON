//
//  Service.swift
//  FetchAPIJSON
//
//  Created by Ipung Dev Center on 21/08/20.
//  Copyright © 2020 Banyu Center. All rights reserved.
//

import Foundation
import SwiftUI


class ApiServices: ObservableObject {
  // 1.
  @Published var post = [Post]()
     
    init() {
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
        // 2.
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            do {
                if let postData = data {
                    // 3.
                    let decodedData = try JSONDecoder().decode([Post].self, from: postData)
                    DispatchQueue.main.async {
                        self.post = decodedData
                    }
                } else {
                    print("No data")
                }
            } catch {
                print("Error")
            }
        }.resume()
    }
}



