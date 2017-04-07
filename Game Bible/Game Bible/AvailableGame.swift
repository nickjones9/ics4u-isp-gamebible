//
//  AvailableGame.swift
//  Game Bible
//
//  Created by Nicholas Jones on 2017-04-07.
//  Copyright © 2017 Nicholas Jones. All rights reserved.
//

import Foundation

class AvailableGame {
    var name = ""
    var players = ""
    var description = ""
    var instructions = ""
    var materials = ""
    var image = ""
    var available = false
    
    init(name: String, players: String, description: String, instructions: String, materials: String, image: String, available: Bool) {
        self.name = name
        self.players = players
        self.description = description
        self.instructions = instructions
        self.materials = materials
        self.image = image
        self.available = available
    }
}
