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
    
    var playersSelected = ""
    
    var hasDeckOfCards = false
    var hasPairOfDice = false
    var hasDominos = false
    
    var difficultySelected = ""
    var actionSelected = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        deckOfCardsCheckbox.delegate = self
        pairOfDiceCheckbox.delegate = self
        dominosCheckbox.delegate = self
        deckOfCardsCheckbox.setOn(false, animated: false)
        
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
    
}
