//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story{
    let storyTitle: String
    let choice1: [String: Int]
    let choice2: [String: Int]

    
    init(t: String, c1: [String: Int], c2: [String: Int]) {
        storyTitle = t
        choice1 = c1
        choice2 = c2
    }


}
