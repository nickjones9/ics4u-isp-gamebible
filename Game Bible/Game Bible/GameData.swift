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
            Game(name: "Blackjack", players: "2+ Players, 1 Dealer", description: "In blackjack...", instructions: "To play blackjack...", materials: "Card Deck, Poker Chips", image: "chips", available: false),
            Game(name: "Crazy Eights", players: "3+ Players", description: "XXX", instructions: "XXX", materials: "Card Deck", image: "cards", available: false),
            Game(name: "Dominos", players: "2+ Players", description: "XXX", instructions: "XXX", materials: "Dominos", image: "dominos", available: false),
            Game(name: "Go Fish", players: "3+ Players", description: "XXX", instructions: "XXX", materials: "Card Deck", image: "cards", available: false),
            Game(name: "War", players: "2 Players", description: "XXX", instructions: "XXX", materials: "Card Deck", image: "cards", available: true)
        ]

        
    }
}
