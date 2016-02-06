//
//  MainMenuTableViewController.swift
//  dartBoard301
//
//  Created by Jiunn-Jye Liu on 2/5/16.
//  Copyright © 2016 Jiunn-Jye Liu. All rights reserved.
//

import UIKit

class MainMenuTableViewController: UITableViewController {
    

   // var players:[player] = [player(playerNameIs: "Jake"), player(playerNameIs: "John")]
   // var mainMenu:[Menu] = []
    var game:Game = Game(gameNameIs: "Dartboard")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //game?.initMenu()
        game.menu.append(Menu(titleOfMenu: "301"))
        game.menu.append(Menu(titleOfMenu: "Setting"))
        print(game.menu[0].title)
        print(game.menu.count)
  //      mainMenu = Menu.initMenu()
  //      game?.menu?.title = mainMenu[0].title
  //      print("Here is \(game?.menu?.title)")
  //      print(mainMenu.count)
  //      print(mainMenu[0].title)
        
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

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
    //    return mainMenu.count
        return game.menu.count
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("NumberOfPlayerSegue", sender: nil)
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath)

        // Configure the cell...
        
   //     let player = players[indexPath.row]
   //     cell.textLabel?.text = player.name
        
  //        let menu = mainMenu[indexPath.row]
  //      cell.textLabel?.text = menu.title
        
        let menu = game.menu[indexPath.row]
        cell.textLabel?.text = menu.title
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
         let numberPlayerTableViewController = segue.destinationViewController as? NumberPlayerTableViewController
        
        if segue.identifier == "NumberOfPlayerSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
    //            let menu = mainMenu[indexPath.row]
    //            numberPlayerTableViewController?.menu = menu
                let menu = game.menu[indexPath.row]
                numberPlayerTableViewController?.menu = menu
            }
            
            
            
            }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
