//
//  GameDetailViewController.swift
//  Game Bible
//
//  Created by Nicholas Jones on 2017-02-23.
//  Copyright © 2017 Nicholas Jones. All rights reserved.
//

import UIKit

class GameDetailViewController: UIViewController {
    
    var gameName = ""
    //var gameImage
    //var gameInstructions
    //var game
    
    @IBOutlet weak var gameNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        gameNameLabel.text = gameName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
