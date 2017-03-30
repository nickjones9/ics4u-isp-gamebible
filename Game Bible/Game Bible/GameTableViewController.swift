//
//  ViewController.swift
//  Game Bible
//
//  Created by Nicholas Jones on 2017-02-13.
//  Copyright © 2017 Nicholas Jones. All rights reserved.
//

import UIKit

class GameTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var gameData : GameData = GameData()
    var games : [Game] = []
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        
        // Make a new reference to the games data
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
    
    override var prefersStatusBarHidden: Bool {
        return false
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
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! GameTableViewCell
        
        cell.nameLabel.text = games[indexPath.row].name
        cell.thumbnailImageView.image = UIImage(named: games[indexPath.row].image)
        cell.playersLabel.text = games[indexPath.row].players
        //descriptionLabel.text = games[indexPath.row].description
        //instructionsLabel.text = games[indexPath.row].instructions
        cell.materialsLabel.text = games[indexPath.row].materials
        
        return cell

    }
}

