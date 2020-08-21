//
//  ContentView.swift
//  FetchAPIJSON
//
//  Created by Ipung Dev Center on 21/08/20.
//  Copyright © 2020 Banyu Center. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var fetch = ApiServices()
    
    var body: some View {
        VStack {
            // 2.
            List(fetch.post) { post in
                VStack(alignment: .leading) {
                    // 3.
                    Text(post.title)
                    Text("\(post.body)") // print desc
                        .font(.system(size: 11))
                        .foregroundColor(Color.gray)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
