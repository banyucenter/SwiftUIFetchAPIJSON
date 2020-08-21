//
//  Post.swift
//  FetchAPIJSON
//
//  Created by Ipung Dev Center on 21/08/20.
//  Copyright © 2020 Banyu Center. All rights reserved.
//

import Foundation
import SwiftUI

struct Post: Codable, Identifiable {
    public var id: Int
    public var title: String
    public var body: String
}
