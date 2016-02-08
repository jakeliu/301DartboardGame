//
//  ViewController.swift
//  dartBoard301
//
//  Created by Jiunn-Jye Liu on 1/16/16.
//  Copyright © 2016 Jiunn-Jye Liu. All rights reserved.
//
// First change commment       

import UIKit

class GamePlayViewController: UIViewController {
    
    //var players = [player]()
    var game:Game = Game(gameNameIs: "301")
    
    var players:[player] = [player.init(playerNameIs: "Jake"), player.init(playerNameIs: "Vincent"), player.init(playerNameIs: "John")]
    
    var activePlayer = 0
    var dartboard = Dartboard()

    var labelString: String = ""
    var pressedKey: Int = 0
    var tempString: String = ""
   // var previousNumber: Int = 0
    var x2Value: Bool = false
    var x3Value: Bool = false

    @IBOutlet weak var player1: UITextField!
    @IBOutlet weak var player2: UITextField!
    @IBOutlet weak var player3: UITextField!
    @IBOutlet weak var player4: UITextField!
    
    @IBOutlet weak var textOutput: UITextView!
    
    @IBOutlet weak var score1: UITextField!
    @IBOutlet weak var score2: UITextField!
    @IBOutlet weak var score3: UITextField!
    @IBOutlet weak var score4: UITextField!
    
    
    @IBOutlet weak var playerSelect: UISegmentedControl!

    @IBAction func indexChanged(sender: AnyObject) {
        switch playerSelect.selectedSegmentIndex {
        case 0:
            enterPlayerName(0)
            print("0 test")
        case 1:
            enterPlayerName(1)
             print("1 test")
        case 2:
            enterPlayerName(2)
             print("2 test")
        default:
        break
        }
    }

    
    
    @IBAction func buttonPressed(sender: UIButton) {
       

        if (sender.titleLabel!.text! == "x2") {
            x2Value = true
        
        } else if (sender.titleLabel!.text! == "x3") {
            x3Value = true
           
        } else {
            
            if (x2Value == true) {
                tappedNumber(Int(sender.titleLabel!.text!)! * 2)
                x2Value = false
            } else if (x3Value == true) {
                tappedNumber(Int(sender.titleLabel!.text!)! * 3)
                x3Value = false
            } else {
                tappedNumber(Int(sender.titleLabel!.text!)!)
            }
        
            print("Number pressed: \(Int(sender.titleLabel!.text!)!)")

            
          //  dartboard.roundShot -= 1
            print("CURRENT ROUND SHOT: \(game.dartboard.roundShot)")
        }
        
        nextPlayerTurn()
    }
    
    
    var output: String = ""

    var roundNumber: Int = 3
    var roundTotalScore: Int = 0
    var nextPlayer: Bool = false
    
    func showAlertWindow(name:String) {
        let alert = UIAlertController(title: "Next player", message: "It \(name) player turn!", preferredStyle: .Alert)
        
        let okayAction = UIAlertAction(title: "Okay", style: .Default) { (action:UIAlertAction) -> Void in
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Default) { (action:UIAlertAction) -> Void in
            
        }
        alert.addAction(okayAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    func tappedNumber(num:Int) {
        //labelString = labelString.stringByAppendingString("\(num)")
        
        
    
       if (game.dartboard.nextTurn == false) {
            game.dartboard.roundScore = players[activePlayer].roundScore
            game.dartboard.totalScore = players[activePlayer].totalScore

            
           // labelString = String("\(dartboard.gameEngine(num))")
             game.dartboard.withIn3shot(num)
        
        if (players[activePlayer].totalScore == 301) {
            showWinner(players[activePlayer].name)
            print("_________ YOU WON _________")
        }
        
        
            players[activePlayer].roundScore = game.dartboard.roundScore
            players[activePlayer].totalScore = game.dartboard.totalScore
        
        if (game.dartboard.totalScore == 301) {
            textOutput.text = "You Won!"
        }
            print("ACTIVE Playaer \(players[activePlayer].name)")
            output += "\(players[activePlayer].name) - "
            output += String("\(num)\n")
            //output += String("\(players[activePlayer].roundScore)\n")
            textOutput.text = output
        
            if (activePlayer == 0) {
                score1.text = String("\(players[activePlayer].totalScore)")
            } else if (activePlayer == 1) {
               
                score2.text = String("\(players[activePlayer].totalScore)")
            } else {
                
                score3.text = String("\(players[activePlayer].totalScore)")
            }
        
//        else {
//                score4.text = String("\(players[activePlayer].totalScore)")
//            }
        
        
        }
        
      // nextPlayerTurn()
        
        
       

    }
    
    func nextPlayerTurn() {
        if (game.dartboard.nextTurn == true ) {
     //   if (dartboard.roundShot == 0){
            activePlayer = (activePlayer + 1 ) % 2
            showAlertWindow("\(players[activePlayer].name)")
            game.dartboard.nextTurn = false
        }
    }
    

    
    func enterPlayerName(index: Int) {
        let alert = UIAlertController(title: "Please enter your name", message: "Add a new name", preferredStyle: .Alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .Default) { (action:UIAlertAction) -> Void in
            let textField = alert.textFields!.first
            self.saveName(index,name: textField!.text!)
        
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Default) { (action:UIAlertAction) -> Void in
            
        }
        
        alert.addTextFieldWithConfigurationHandler { (textField:UITextField) -> Void in
            
        }
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert, animated: true, completion: nil)
        
        
    }
    
    func saveName(index:Int, name:String) {
      // players[index].name = name
       
    //    players.append(player.init(playerNameIs: name))
        players.insert(player.init(playerNameIs: name), atIndex: index)
        print(name)
        updateText(index)
    }
    
    func updateText(index: Int) {
        
        switch index {
        case 0:
            player1.text = players[index].name
        case 1:
            player2.text = players[index].name
        case 2:
            player3.text = players[index].name
        default:
            break
            
        }
        
        
        
        
        //score1.text = labelString
        // textOutput.text = String(dartboard.totalScore)
    }
    
    func showWinner(name:String) {
        let alert = UIAlertController(title: "YOU WON!!!!", message: "", preferredStyle: .Alert)
        
        let okayAction = UIAlertAction(title: "Okay", style: .Default) { (action:UIAlertAction) -> Void in
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Default) { (action:UIAlertAction) -> Void in
            
        }
        alert.addAction(okayAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    func updatePlayerName() {
        var nop = game.numberOfPlayers
        switch nop {
        case 1:
            player1.text = game.players[0].name
        case 2:
            player1.text = game.players[0].name
            player2.text = game.players[1].name
        case 3:
            player1.text = game.players[0].name
            player2.text = game.players[1].name
            player3.text = game.players[2].name
        case 4:
            player1.text = game.players[0].name
            player2.text = game.players[1].name
            player3.text = game.players[2].name
            player4.text = game.players[3].name
        default:
            print("not there")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updatePlayerName()
        print(" game object passed to here : \(game.numberOfPlayers)")
        print(" game player : \(game.menu[0].title)")
        
        for index in 1...game.numberOfPlayers {
            print(" game player : \(game.players[index-1].name)")
        }
        print(" --------------------------------------------- ")
        
//        for index in 0...game.players.count {
//            print("Player: \(game.players[index])")
//        }
        
//        for index in 0...2 {
//            switch index {
//            case 0:
//                player1.text = game.players[index].name
//            case 1:
//                player2.text = game.players[index].name
//            case 2:
//                player3.text = game.players[index].name
//          //  case 3:
//              //  player3.text = game?.players[index].name
//            default:
//                break
//                
//            }
//
//        }
      
        
        //players.append(player.init(playerNameIs: "Jake"))
        //players.append(player.init(playerNameIs: "John"))
        
      //  player1.text = players[0].name
      //  player2.text = players[1].name
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

