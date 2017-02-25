//
//  game.swift
//  Game Bible
//
//  Created by Nicholas Jones on 2017-02-24.
//  Copyright © 2017 Nicholas Jones. All rights reserved.
//

import Foundation

class Game {
    var name = ""
    var players = ""
    var description = ""
    var instructions = ""
    var materials = ""
    
    init(name: String, players: String, description: String, instructions: String, materials: String) {
        self.name = name
        self.players = players
        self.description = description
        self.instructions = instructions
        self.materials = materials
    }
}
