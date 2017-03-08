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
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var gameNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: false)

        gameNameLabel.text = game.name
        
        tableView.backgroundColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.2)
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        tableView.separatorColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
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
        cell.backgroundColor = UIColor.clear
        return cell
    }
    
}
