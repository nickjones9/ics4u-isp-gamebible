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
    var availableGames : [AvailableGame] = []
    
    var playersSelected = "1"
    
    var hasDeckOfCards = false
    var hasPairOfDice = false
    var hasDominos = false
    
    var difficultySelected = "easy"
    var actionSelected = "low"
    
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
            playersSelected = "1"
        case 1:
            playersSelected = "2"
        case 2:
            playersSelected = "3"
        case 3:
            playersSelected = "4"
        case 4:
            playersSelected = "5"
        case 5:
            playersSelected = "5+"
        default:
            playersSelected = "1"
        }
    }
    @IBAction func difficultyChanged(_ sender: Any) {
        switch difficultySegment.selectedSegmentIndex {
        case 0:
            difficultySelected = "easy"
        case 1:
            difficultySelected = "medium"
        case 2:
            difficultySelected = "hard"
        case 3:
            difficultySelected = "any"
        default:
            difficultySelected = "easy"
        }
    }
    @IBAction func actionChanged(_ sender: Any) {
        switch actionSegment.selectedSegmentIndex {
        case 0:
            actionSelected = "low"
        case 1:
            actionSelected = "medium"
        case 2:
            actionSelected = "high"
        case 3:
            actionSelected = "any"
        default:
            actionSelected = "low"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Browsing available games")
        
        if segue.identifier == "showAvailableGames" {
            let destinationController = segue.destination as! FilterTableViewController
            
            destinationController.playersSelected = self.playersSelected
            destinationController.difficultySelected = self.difficultySelected
            destinationController.actionSelected = self.actionSelected
            destinationController.hasDominos = self.hasDominos
            destinationController.hasPairOfDice = self.hasPairOfDice
            destinationController.hasDeckOfCards = self.hasDeckOfCards

            
            print("The user has \(playersSelected) players")
  
            print("The user selected \(difficultySelected) difficulty")

            print("The user selected \(actionSelected) action")

            if self.hasDominos == true {
                print("The user has dominos")
            }
            if self.hasPairOfDice == true {
                print("The user has a pair of dice")
            }
            if self.hasDeckOfCards == true {
                print("The user has a deck of cards")
            }
            
            let filteredGames = games.filter({$0.playersRequired == playersSelected && $0.difficulty == difficultySelected && $0.action == actionSelected && $0.deckOfCards == hasDeckOfCards && $0.pairOfDice == hasPairOfDice && $0.dominos == hasDominos})
            
            print(filteredGames)
            
            //destinationController.filteredGames = filteredGames
        }
    }
}
