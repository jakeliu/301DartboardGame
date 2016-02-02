//
//  Dartboard.swift
//  dartBoard301
//
//  Created by Jiunn-Jye Liu on 1/22/16.
//  Copyright © 2016 Jiunn-Jye Liu. All rights reserved.
//

import Foundation


struct Dartboard {
    // var number: Points
    
    var name: String
    var roundShot: Int = 3
    var numberOfRound: Int = 1
    var roundScore: Int = 0
    var totalScore: Int = 0
    var gameScore: Int = 301
    var nextTurn: Bool = false
    var isBursted: Bool = false
    
    var output: String = ""
    
    init(name:String) {
        self.name = name
    }
    
    mutating func addToRoundScore(num: Int) -> Int {
        
        return num + roundScore
    }
    
    mutating func checkGameScore(num: Int) -> Bool {
        if (num > gameScore) {
            output.appendContentsOf("Bust too many points!\n")
            
            return false
        } else {
            output.appendContentsOf("You are good! \(num)\n")
            
            return true
        }
    }
    
    mutating func checkRound (num:Int) -> Bool {
        if (roundShot > 0) {
            roundScore = addToRoundScore(num)
            roundShot = roundShot - 1
            
        }
        
        
        if (roundShot == 0) {
            roundShot = 3
            

            output += "Round score is : \(roundScore), score: \(num), round: \(numberOfRound)\n\n"
            
            if (isBursted == false) {
                totalScore = roundScore + totalScore
            } else {
                 roundScore = 0
            }
            
           
            nextPlayer()
            
            return true
        } else {
            output += "Round score is : \(roundScore), score: \(num), round: \(numberOfRound)\n\n"
            return false
        }
    }
    
    mutating func check301(num:Int) {
        if (num > 301) {
            isBursted = true
            output.appendContentsOf("\nBurst! \(num)\n")
            
        } else if (num == 301){
            isBursted = false
            output.appendContentsOf("\nYOU WON!!!\n")
            
        } else {
            output.appendContentsOf("\nStill okay\n")
            
        }
    }
    
    
    mutating func gameEngine(num: Int) -> String {
        
        
        output = "Welcome player: \(name)\n"
        
       // for random in randomNumber {

        
            if ( checkRound(num) == true ) {
                check301(totalScore)
                
                numberOfRound = numberOfRound + 1
                
                output.appendContentsOf("\nNext!")
                output.appendContentsOf("\ntotal Score is : \(totalScore)\n")
                
            }
      //  }
        return output
    }
    
    mutating func nextPlayer() {
        if (nextTurn == true ) {
            nextTurn = false
            print("Next player \(nextTurn)")
        } else {
            nextTurn = true
            print("Next player \(nextTurn)")
        }
    }
}
