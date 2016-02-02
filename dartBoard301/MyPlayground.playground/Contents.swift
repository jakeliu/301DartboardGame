//: Playground - noun: a place where people can play

import UIKit
import Foundation

//class player {
//    var name: String
//    init(withName name:String) {
//        self.name = name
//    }
//}
//
//var players = [player]()
//
//players.append(player.init(withName: "Jake"))
//players.append(player.init(withName: "John"))
//
//players[0].name
//players[1].name
//
var player: Int = 2

(player + 1)  % 3



//enum Points: Int {
//    case one = 1
//    case two
//    case three
//    case four
//    case five
//    case six
//    case seven
//    case eight
//    case nine
//    case ten
//    case eleven
//    case twelve
//    case thirdteen
//    case fourteen
//    case fifteen
//    case sixteen
//    case seventeen
//    case eighteen
//    case nineteen
//    case twenty
//}
//
//struct Player {
//    var name: String = ""
//    var score: Int = 0
//}
//
//struct Dartboard {
//   // var number: Points
//    
//    var name: String
//    var roundShot: Int = 3
//    var numberOfRound: Int = 0
//    var roundScore: Int = 0
//    var totalScore: Int = 0
//    var gameScore: Int = 301
//    var nextTurn: Bool = false
//    
//    init(name:String) {
//        self.name = name
//    }
//    
//    mutating func addToRoundScore(num: Int) -> Int {
//            return num + roundScore
//    }
//    
//    mutating func checkGameScore(num: Int) -> Bool {
//        if (num > gameScore) {
//            print("Bust too many points!")
//            return false
//        } else {
//            print("You are good! \(num)")
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
//        print("Round score is : \(roundScore), current score: \(num), current round: \(numberOfRound)")
//        if (roundShot == 0) {
//            roundShot = 3
//            totalScore = roundScore + totalScore
//            roundScore = 0
//            nextPlayer()
//            
//            return true
//        } else {
//            return false
//        }
//    }
//    
//    mutating func check301(num:Int) {
//        if (num > 301) {
//            print("Burst! \(num)")
//        } else if (num == 301){
//            print("YOU WON!!!")
//        } else {
//            print("Still okay")
//        }
//    }
// 
//    
//    mutating func gameEngine(randomNumber: [Int]) {
//        print("Welcome player: \(name)")
//        
//        for random in randomNumber {
//            if ( checkRound(random) == true ) {
//                check301(totalScore)
//                numberOfRound = numberOfRound + 1
//                
//                print("Next!")
//                print("\ntotal Score is : \(totalScore)\n")
//            }
//        }
//    }
//    
//    mutating func nextPlayer() {
//        if (nextTurn == true ) {
//            nextTurn = false
//            print("Next player \(nextTurn)")
//        } else {
//            nextTurn = true
//            print("Next player \(nextTurn)")
//        }
//    }
//}
//
//var randomNumber: [Int] = [1,3,4,5,6,7,8,9,0,2,3,14,15,11,13,16,18,20,9,3,4,6,7,8,9,3,16,14,11,20,11,14,11,18]
//
//var randomNumber2: [Int] = [4,3,4,5,16,7,8,19,0,9,3,14,1,11,4,16,10,20,9,3,4,6,7,8,9,3,16,14,11,20,11,14,11,18,1,2]
//
//var player1 = Dartboard(name: "Jake")
//var player2 = Dartboard(name: "Vincent")
//
////dartgame.checkGameScore(301)
////dartgame.addToRoundScore(20)
//
//player1.gameEngine(randomNumber)
//player2.gameEngine(randomNumber2)

