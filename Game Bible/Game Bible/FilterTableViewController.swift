//
//  FilterTableViewTableViewController.swift
//  Game Bible
//
//  Created by Nicholas Jones on 2017-02-24.
//  Copyright © 2017 Nicholas Jones. All rights reserved.
//

import UIKit

class FilterTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var gameData : GameData = GameData()
    var games : [Game] = []
    var availableGames : [AvailableGame] = []
    
    var playersSelected = ""
    
    var hasDeckOfCards = false
    var hasPairOfDice = false
    var hasDominos = false
    
    var difficultySelected = ""
    var actionSelected = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Make a new reference to the games data
        games = gameData.games
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if tableView.indexPathForSelectedRow != nil {
            tableView.deselectRow(at: tableView.indexPathForSelectedRow!, animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showGameDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! GameDetailViewController
                destinationController.game = games[indexPath.row]
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Return number of rows in section
        // iterate over the array ... count elements that match filter criteria
        var availableCount = 0
        for game in games {
            if game.available == false {
            availableCount += 1
            }
        }

        return availableCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! GameTableViewCell
        
        
        
//        cell.nameLabel.text = availableGames[indexPath.row].name
//        cell.thumbnailImageView.image = UIImage(named: availableGames[indexPath.row].image)
//        cell.playersLabel.text = availableGames[indexPath.row].players
//        cell.materialsLabel.text = availableGames[indexPath.row].materials
        
        return cell
    }
    
}

