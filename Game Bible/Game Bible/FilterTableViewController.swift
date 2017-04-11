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
    var filteredGames : [Game] = []
    
    var playersSelected : Int = 0
    
    var hasDeckOfCards = false
    var hasPairOfDice = false
    var hasDominos = false
    
    var difficultySelected : Int = 0
    var actionSelected : Int = 0
    
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

        return filteredGames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! GameTableViewCell
        
        cell.nameLabel.text = filteredGames[indexPath.row].name
        cell.thumbnailImageView.image = UIImage(named: filteredGames[indexPath.row].image)
        cell.playersLabel.text = filteredGames[indexPath.row].players
        cell.materialsLabel.text = filteredGames[indexPath.row].materials
        
        return cell
    }
    
}

