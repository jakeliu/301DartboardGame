//
//  PlayerNameViewController.swift
//  dartBoard301
//
//  Created by Jiunn-Jye Liu on 2/5/16.
//  Copyright © 2016 Jiunn-Jye Liu. All rights reserved.
//

import UIKit

class PlayerNameViewController: UIViewController {
    
    @IBOutlet weak var displayPlayerName: UITextField!
    
    @IBAction func EnterPlayerName(sender: AnyObject) {
    }
    
    @IBOutlet weak var playerNameLabel: UILabel!
    @IBAction func submitButton(sender: AnyObject) {
    }
    
    var game:Game = Game(gameNameIs: "301")
    var numberOfPlayer:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = String(numberOfPlayer!)
        print(numberOfPlayer!)
        game.numberOfPlayers = numberOfPlayer!
        print("This number of player is \(game.numberOfPlayers)")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
