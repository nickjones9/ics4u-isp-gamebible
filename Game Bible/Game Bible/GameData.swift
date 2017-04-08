//
//  GameData.swift
//  Game Bible
//
//  Created by Nicholas Jones on 2017-03-30.
//  Copyright © 2017 Nicholas Jones. All rights reserved.
//

import Foundation

class GameData {

    var games : [Game]
    var availableGames : [AvailableGame]
    
    init() {
        self.availableGames = [
        ]
        
        self.games = [
            Game(name: "Blackjack", players: "2+ Players, 1 Dealer", description: "In blackjack...", instructions: "To play blackjack...", materials: "Card Deck, Poker Chips", image: "chips", playersRequired: "2", deckOfCards: true, pairOfDice: false, dominos: false, difficulty: "medium", action: "medium"),
            Game(name: "Crazy Eights", players: "3+ Players", description: "XXX", instructions: "XXX", materials: "Card Deck", image: "cards", playersRequired: "3", deckOfCards: true, pairOfDice: false, dominos: false, difficulty: "easy", action: "low"),
            Game(name: "Dominos", players: "2+ Players", description: "XXX", instructions: "XXX", materials: "Dominos", image: "dominos", playersRequired: "2", deckOfCards: false, pairOfDice: false, dominos: true, difficulty: "medium", action: "low"),
            Game(name: "Go Fish", players: "3+ Players", description: "XXX", instructions: "XXX", materials: "Card Deck", image: "cards", playersRequired: "3", deckOfCards: true, pairOfDice: false, dominos: false, difficulty: "easy", action: "low"),
            Game(name: "War", players: "2 Players", description: "XXX", instructions: "XXX", materials: "Card Deck", image: "cards", playersRequired: "2", deckOfCards: true, pairOfDice: false, dominos: false, difficulty: "easy", action: "medium")
            ]

        
    }
}
