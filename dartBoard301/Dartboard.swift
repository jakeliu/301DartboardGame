//
//  Dartboard.swift
//  dartBoard301
//
//  Created by Jiunn-Jye Liu on 1/22/16.
//  Copyright © 2016 Jiunn-Jye Liu. All rights reserved.
//

import Foundation


struct Dartboard {

    
//    mutating func checkGameScore(num: Int) -> Bool {
//        if (num > gameScore) {
//            output.appendContentsOf("Bust too many points!\n")
//            
//            return false
//        } else {
//            output.appendContentsOf("You are good! \(num)\n")
//            
//            return true
//        }
//    }
//    
//    mutating func checkRound (num:Int) -> Bool {
//        if (roundShot > 0) {
//            roundScore = addToRoundScore(num)
//            roundShot = roundShot - 1
//            
//        }
//        
//        if ((roundScore + totalScore) > 301) {
//            roundScore = 0
//        }
//        
//        
//        if (roundShot == 0) {
//            roundShot = 3
//            
//
//          // output += "Round score is : \(roundScore), score: \(num), round: \(numberOfRound)\n\n"
//           
//            if (isBursted == false) {
//                totalScore = roundScore + totalScore
//        //        output += "\nTotal Score: \(totalScore)\n\n"
//            } else {
//                 roundScore = 0
//                 totalScore = roundScore + totalScore
//       //         output += "\nTotal Score: \(totalScore)\n\n"
//            }
//            
//           
//            nextPlayer()
//            
//            return true
//        } else {
//        //    output += "Round score is : \(roundScore), score: \(num), round: \(numberOfRound)\n\n"
//            // print(output)
//            
//            return false
//        }
//       
//    }
//    
//    mutating func check301(num:Int) -> String {
//        if (num > 301) {
//            isBursted = true
//            output.appendContentsOf("\nBurst! \(num)\n")
//            
//        } else if (num == 301){
//            isBursted = false
//            output.appendContentsOf("\nYOU WON!!!\n")
//            
//        } else {
//            output.appendContentsOf("\nStill okay\n")
//            
//        }
//        return output
//    }
//    
//    mutating func printOutput() -> String {
//        
//        return output
//    }
    
//    mutating func nextPlayer() {
//        if (nextTurn == true ) {
//            nextTurn = false
//            print("Next player \(nextTurn)")
//        } else {
//            nextTurn = true
//            print("Next player \(nextTurn)")
//        }
//    }
    
    // var number: Points
    
    var name: String?
    var roundShot: Int = 3
    var numberOfRound: Int = 1
    var roundScore: Int = 0
    var totalScore: Int = 0
    var gameScore: Int = 301
    var nextTurn: Bool = false
    var isBursted: Bool = false
    
    var output: String = ""
    
    
    mutating func addToRoundScore(num: Int) -> Int {
        roundScore = num + roundScore
        return roundScore
    }
    
    mutating func withIn3shot(num: Int) {
        if (roundShot > 0) {
            print("\n ROUND \(roundShot)")
            print("Before round score: \(roundScore)")
            addToRoundScore(num)
            print("after round score: \(roundScore)")
            print("Before total score: \(totalScore)\n")
            
            roundShot -= 1
        }
        
        if (roundShot == 0) {
            print("\n\nNEXT ROUND!!!\n\n")
            
            
            print("Before total score: \(totalScore)")
            if ((roundScore + totalScore) == 301) {
                print("\n\nYou Won!\n")
                totalScore = roundScore + totalScore
                print("After total score: \(totalScore)")
               // totalScore = 0
            } else if ((roundScore + totalScore) > 301) {
                print("\nBURST!!!\n")
                roundScore = 0
                totalScore = roundScore + totalScore
                print("After total score: \(totalScore)")
            } else if ((roundScore + totalScore) < 301) {
                print("After round score: \(roundScore)")
                totalScore = roundScore + totalScore
                print("After total score: \(totalScore)")
            }
            roundShot = 3
            roundScore = 0
            nextTurn = true
        }

    }

    mutating func after3shot() {
      //  if (roundShot == 0) {
            print("\n\nNEXT ROUND!!!\n\n")
            
            
            print("Before total score: \(totalScore)")
            if ((roundScore + totalScore) == 301) {
                print("\n\nYou Won!\n")
                totalScore = roundScore + totalScore
                print("After total score: \(totalScore)")
                totalScore = 0
            } else if ((roundScore + totalScore) > 301) {
                print("\nBURST!!!\n")
                roundScore = 0
                totalScore = roundScore + totalScore
                print("After total score: \(totalScore)")
            } else if ((roundScore + totalScore) < 301) {
                 print("After round score: \(roundScore)")
                totalScore = roundScore + totalScore
                print("After total score: \(totalScore)")
            }
            roundShot = 3
            roundScore = 0
            nextTurn = true
   //     }
    }
    
    mutating func gameEngine(num: Int) -> Int {
        
        withIn3shot(num)
        
        
    //     after3shot()

        return roundScore
    }
    
}
