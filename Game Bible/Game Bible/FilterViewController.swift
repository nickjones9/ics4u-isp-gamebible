//
//  FilterViewController.swift
//  Game Bible
//
//  Created by Nicholas Jones on 2017-03-02.
//  Copyright © 2017 Nicholas Jones. All rights reserved.
//

// Materials include... Card Deck, Shot Glasses, Solo Cups, TV, Coins, Quarters, Dice, Poker Chips, Pen, Beer Cans, Beer Bottels, Hard Alcohol, Beer Bong, Ping Pong Balls, 
import UIKit

class FilterViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var optionsPicker: UIPickerView!

    @IBOutlet weak var playersPicker: UIPickerView!
    
    let playerOptions = ["1", "2", "3", "4", "5", "5+"]
    let difficultyOptions = ["Easy", "Medium", "Hard", "Any"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //if pickerView == playersPicker {
        return 1
        //} else if pickerView == optionsPicker {
        //    return 1
        //}
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //if pickerView == playersPicker {
        return playerOptions[row]
        //} else if pickerView == optionsPicker {
        //   return difficultyOptions[row]
        //}
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // if pickerView == playersPicker {
        return playerOptions.count
        //} else if pickerView == optionsPicker {
        //    return difficultyOptions.count
        //}
    }
    
    //    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    //        <#code#>
    //    }
    
    
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
