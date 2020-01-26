//
//  Comment.swift
//  MVP+Network+Service
//
//  Created by rau4o on 1/27/20.
//  Copyright © 2020 rau4o. All rights reserved.
//

import UIKit

struct Comment: Decodable {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
}
