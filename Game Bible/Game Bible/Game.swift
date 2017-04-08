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
    var image = ""
    var playersRequired = ""
    var deckOfCards : Bool
    var pairOfDice : Bool
    var dominos : Bool
    var difficulty = ""
    var action = ""
    
    init(name: String, players: String, description: String, instructions: String, materials: String, image: String, playersRequired: String, deckOfCards: Bool, pairOfDice: Bool, dominos: Bool, difficulty: String, action: String) {
        self.name = name
        self.players = players
        self.description = description
        self.instructions = instructions
        self.materials = materials
        self.image = image
        self.playersRequired = playersRequired
        self.deckOfCards = deckOfCards
        self.pairOfDice = pairOfDice
        self.dominos = dominos
        self.difficulty = difficulty
        self.action = action
    }
}
