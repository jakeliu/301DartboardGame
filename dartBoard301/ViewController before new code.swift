//
//  ViewController.swift
//  dartBoard301
//
//  Created by Jiunn-Jye Liu on 1/16/16.
//  Copyright © 2016 Jiunn-Jye Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var players: [game301] = []
    var labelString: String = ""


    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var textOutput: UITextView!
    @IBOutlet weak var score2: UITextField!
    @IBOutlet weak var score3: UITextField!
    
    @IBAction func tapNumber1(sender: AnyObject) {tappedNumber(1)}
    @IBAction func tapNumber2(sender: AnyObject) {tappedNumber(2)}
    @IBAction func tapNumber3(sender: AnyObject) {tappedNumber(3)}
    @IBAction func tapNumber4(sender: AnyObject) {tappedNumber(4)}
    @IBAction func tapNumber5(sender: AnyObject) {tappedNumber(5)}
    @IBAction func tapNumber6(sender: AnyObject) {tappedNumber(6)}
    @IBAction func tapNumber7(sender: AnyObject) {tappedNumber(7)}
    @IBAction func tapNumber8(sender: AnyObject) {tappedNumber(8)}
    @IBAction func tapNumber9(sender: AnyObject) {tappedNumber(9)}
    @IBAction func tapNumber10(sender: AnyObject) {tappedNumber(10)}
    @IBAction func tapNumber11(sender: AnyObject) {tappedNumber(11)}
    @IBAction func tapNumber12(sender: AnyObject) {tappedNumber(12)}
    @IBAction func tapNumber13(sender: AnyObject) {tappedNumber(13)}
    @IBAction func tapNumber14(sender: AnyObject) {tappedNumber(14)}
    @IBAction func tapNumber15(sender: AnyObject) {tappedNumber(15)}
    @IBAction func tapNumber16(sender: AnyObject) {tappedNumber(16)}
    @IBAction func tapNumber17(sender: AnyObject) {tappedNumber(17)}
    @IBAction func tapNumber18(sender: AnyObject) {tappedNumber(18)}
    @IBAction func tapNumber19(sender: AnyObject) {tappedNumber(19)}
    @IBAction func tapNumber20(sender: AnyObject) {tappedNumber(20)}

    var roundNumber: Int = 3
    var roundTotalScore: Int = 0
    var nextPlayer: Bool = false
    
    func tappedNumber(num:Int) {
        //labelString = labelString.stringByAppendingString("\(num)")
        labelString = String("\(num)")
        updateText()
        print(labelString)
        checkRoundTotal(num)
    }
    
    func checkRoundTotal(num: Int) ->Int {
        if (roundNumber > 0) {
            roundTotalScore = roundTotal(num)
            labelString = String(roundTotalScore)
            roundScore()
            print("inside checkRoundTotal : \(roundTotalScore)")
            roundNumber = roundNumber - 1
            nextPlayer = false
        } else {
            print("Next player")
            nextPlayer = true
        }
        return roundTotalScore
        
    }
    
    func roundScore() {
        score2.text = labelString
    }
    
    func roundTotal(num:Int) -> Int {
        
        roundTotalScore = num + roundTotalScore
        return roundTotalScore
    }
    
    func updateText() {
        score1.text = labelString
    }
    
    
    
    func printScore() {
        print("Name,   Score")
        for player in players {
            print("\(player.name),   \(player.totalScore)")
        }
    }
    
    func checkWinner()->(){
        
        for player in players {
           
            if player.totalScore == 301 {
                print("\(player.name) won.")
            }
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        players = game301.player()
        

        //print(players[1].name)
        
        players[1].totalScore = 301
        
        players[2].totalScore = 301
        
        checkWinner()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

