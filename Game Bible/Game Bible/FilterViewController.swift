//
//  FilterViewController.swift
//  Game Bible
//
//  Created by Nicholas Jones on 2017-03-02.
//  Copyright © 2017 Nicholas Jones. All rights reserved.
//

// Materials include... Card Deck, Shot Glasses, Solo Cups, TV, Coins, Quarters, Dice, Poker Chips, Pen, Beer Cans, Beer Bottels, Hard Alcohol, Beer Bong, Ping Pong Balls, 
import UIKit

class FilterViewController: UIViewController {
    

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
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //if pickerView == playersPicker {
        return 1
        //} else if pickerView == optionsPicker {
        //    return 1
        //}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
