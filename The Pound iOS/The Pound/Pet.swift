//
//  Pet.swift
//  The Pound
//
//  Created by Erin Luu on 2017-01-14.
//  Copyright © 2017 Erin Luu. All rights reserved.
//

import UIKit

class Pet: NSObject {
    
    let name: String!
    let mainDescription: String!
    let breed: String!
    let type: String!
    let age: Int!
    
    var image: UIImage?
    
    init(name: String, description: String, breed: String, type: String, age: Int) {
        self.name = name
        self.mainDescription = description
        self.type = type
        self.age = age
        self.breed = breed
    }
}
