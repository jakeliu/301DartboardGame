//
//  NumberPlayerTableViewController.swift
//  dartBoard301
//
//  Created by Jiunn-Jye Liu on 2/5/16.
//  Copyright © 2016 Jiunn-Jye Liu. All rights reserved.
//

import UIKit

class NumberPlayerTableViewController: UITableViewController {
    
 //   var player:player?
    var game:Game = Game(gameNameIs: "301")
    //var menu:Menu?
    var numberOfPlayer:Int = 4
    
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  self.title = game.menu[0].title
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
//    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        performSegueWithIdentifier("selectPlayerSegue", sender: nil)
//    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return numberOfPlayer
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let selectPlayerViewController = segue.destinationViewController as? SelectPlayerViewController
        
        if segue.identifier == "selectPlayerSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let numberOfPlayer = indexPath.row + 1
                    game.numberOfPlayers = numberOfPlayer
                    print(numberOfPlayer)
                
                  //  playerNameViewController?.numberOfPlayer = numberOfPlayer
                selectPlayerViewController!.game = game
            }
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("numberOfPlayerCell", forIndexPath: indexPath)
        
       
            cell.textLabel?.text = String(indexPath.row+1)
            //cell.textLabel?.text = String(game.menu[indexPath.row].title)

        // Configure the cell...

        return cell
    }
    

}
