//
//  GameDetailViewController.swift
//  Game Bible
//
//  Created by Nicholas Jones on 2017-02-23.
//  Copyright © 2017 Nicholas Jones. All rights reserved.
//

import UIKit

class GameDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var game:Game!
    
    @IBOutlet weak var gameNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        gameNameLabel.text = game.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! GameDetailTableViewCell
    
    // Configure the cell...
    switch indexPath.row {
    case 0:
        cell.fieldLabel.text = "Name"
        cell.valueLabel.text = game.name
        
    case 1:
        cell.fieldLabel.text = "Players"
        cell.valueLabel.text = game.players
        
    case 2:
        cell.fieldLabel.text = "Description"
        cell.valueLabel.text = game.description
        
    case 3:
        cell.fieldLabel.text = "Instructions"
        cell.valueLabel.text = game.instructions
        
    default:
        cell.fieldLabel.text = "Default Field"
        cell.valueLabel.text = "Default Value"
        
    }
        return cell
    }
}
