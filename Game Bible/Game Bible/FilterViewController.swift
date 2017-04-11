//
//  FilterViewController.swift
//  Game Bible
//
//  Created by Nicholas Jones on 2017-03-02.
//  Copyright © 2017 Nicholas Jones. All rights reserved.
//

// Materials include... Card Deck, Shot Glasses, Solo Cups, TV, Coins, Quarters, Dice, Poker Chips, Pen, Beer Cans, Beer Bottels, Hard Alcohol, Beer Bong, Ping Pong Balls,


import UIKit

class FilterViewController: UIViewController, BEMCheckBoxDelegate {
    
    
    @IBOutlet weak var playersSegment: UISegmentedControl!
    @IBOutlet weak var deckOfCardsCheckbox: BEMCheckBox!
    @IBOutlet weak var pairOfDiceCheckbox: BEMCheckBox!
    @IBOutlet weak var dominosCheckbox: BEMCheckBox!
    @IBOutlet weak var difficultySegment: UISegmentedControl!
    @IBOutlet weak var actionSegment: UISegmentedControl!
    
    var gameData : GameData = GameData()
    var games : [Game] = []
    
    var playersSelected = 1
    
    var hasDeckOfCards = false
    var hasPairOfDice = false
    var hasDominos = false
    
    var difficultySelected = 1
    var actionSelected = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Make a new reference to the games data
        games = gameData.games
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        deckOfCardsCheckbox.delegate = self
        pairOfDiceCheckbox.delegate = self
        dominosCheckbox.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    func didTap(_ checkBox: BEMCheckBox) {
        
        hasDeckOfCards = deckOfCardsCheckbox.on
        hasPairOfDice = pairOfDiceCheckbox.on
        hasDominos = dominosCheckbox.on
        
    }
    
    @IBAction func playersChanged(_ sender: Any) {
        switch playersSegment.selectedSegmentIndex {
        case 0:
            playersSelected = 1
        case 1:
            playersSelected = 2
        case 2:
            playersSelected = 3
        case 3:
            playersSelected = 4
        case 4:
            playersSelected = 5
        case 5:
            playersSelected = 6
        default:
            playersSelected = 1
        }
    }
    @IBAction func difficultyChanged(_ sender: Any) {
        switch difficultySegment.selectedSegmentIndex {
        case 0:
            difficultySelected = 1
        case 1:
            difficultySelected = 2
        case 2:
            difficultySelected = 3
        case 3:
            difficultySelected = 4
        default:
            difficultySelected = 1
        }
    }
    @IBAction func actionChanged(_ sender: Any) {
        switch actionSegment.selectedSegmentIndex {
        case 0:
            actionSelected = 1
        case 1:
            actionSelected = 2
        case 2:
            actionSelected = 3
        case 3:
            actionSelected = 4
        default:
            actionSelected = 1
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showAvailableGames" {
            let destinationController = segue.destination as! FilterTableViewController
            
            destinationController.playersSelected = self.playersSelected
            destinationController.difficultySelected = self.difficultySelected
            destinationController.actionSelected = self.actionSelected
            destinationController.hasDominos = self.hasDominos
            destinationController.hasPairOfDice = self.hasPairOfDice
            destinationController.hasDeckOfCards = self.hasDeckOfCards

            var filteredGames = [Game]()
            var cardGames = games.filter({$0.deckOfCards == true})
            var diceGames = games.filter({$0.pairOfDice == true})
            var dominoGames = games.filter({$0.dominos == true})
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            if hasDeckOfCards == true && difficultySelected != 4 && actionSelected != 4 {
                filteredGames += cardGames.filter({$0.playersRequired <= playersSelected && $0.difficulty == difficultySelected && $0.action == actionSelected})
            } else if hasDeckOfCards == true && difficultySelected == 4 && actionSelected == 4 {
                filteredGames += cardGames.filter({$0.playersRequired <= playersSelected && ($0.action == 1 || $0.action == 2 || $0.action == 3) && ($0.difficulty == 1 || $0.difficulty == 2 || $0.difficulty == 3)})
            } else if hasDeckOfCards == true && difficultySelected != 4 && actionSelected == 4 {
                filteredGames += cardGames.filter({$0.playersRequired <= playersSelected && ($0.action == 1 || $0.action == 2 || $0.action == 3) && $0.difficulty == difficultySelected})
            } else if hasDeckOfCards == true && difficultySelected == 4 && actionSelected != 4 {
                filteredGames += cardGames.filter({$0.playersRequired <= playersSelected && $0.action == actionSelected && ($0.difficulty == 1 || $0.difficulty == 2 || $0.difficulty == 3)})
            }
            
            if hasPairOfDice == true && difficultySelected != 4 && actionSelected != 4 {
                filteredGames += diceGames.filter({$0.playersRequired <= playersSelected && $0.difficulty == difficultySelected && $0.action == actionSelected})
            } else if hasDeckOfCards == true && difficultySelected == 4 && actionSelected == 4 {
                filteredGames += diceGames.filter({$0.playersRequired <= playersSelected && $0.action == 1 || $0.action == 2 || $0.action == 3 && $0.difficulty == 1 || $0.difficulty == 2 || $0.difficulty == 3})
            } else if hasDeckOfCards == true && difficultySelected != 4 && actionSelected == 4 {
                filteredGames += diceGames.filter({$0.playersRequired <= playersSelected && $0.action == 1 || $0.action == 2 || $0.action == 3 && $0.difficulty == difficultySelected})
            } else if hasDeckOfCards == true && difficultySelected == 4 && actionSelected != 4 {
                filteredGames += diceGames.filter({$0.playersRequired <= playersSelected && $0.action == actionSelected && $0.difficulty == 1 || $0.difficulty == 2 || $0.difficulty == 3})
            }
            
            if hasDominos == true && difficultySelected != 4 && actionSelected != 4 {
                filteredGames += dominoGames.filter({$0.playersRequired <= playersSelected && $0.difficulty == difficultySelected && $0.action == actionSelected})
            } else if hasDeckOfCards == true && difficultySelected == 4 && actionSelected == 4 {
                filteredGames += dominoGames.filter({$0.playersRequired <= playersSelected && $0.action == 1 || $0.action == 2 || $0.action == 3 && $0.difficulty == 1 || $0.difficulty == 2 || $0.difficulty == 3})
            } else if hasDeckOfCards == true && difficultySelected != 4 && actionSelected == 4 {
                filteredGames += dominoGames.filter({$0.playersRequired <= playersSelected && $0.action == 1 || $0.action == 2 || $0.action == 3 && $0.difficulty == difficultySelected})
            } else if hasDeckOfCards == true && difficultySelected == 4 && actionSelected != 4 {
                filteredGames += dominoGames.filter({$0.playersRequired <= playersSelected && $0.action == actionSelected && $0.difficulty == 1 || $0.difficulty == 2 || $0.difficulty == 3})
            }
            
            destinationController.filteredGames = filteredGames
        }
    }
}
