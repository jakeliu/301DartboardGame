//
//  game301.swift
//  dartBoard301
//
//  Created by Jiunn-Jye Liu on 1/16/16.
//  Copyright © 2016 Jiunn-Jye Liu. All rights reserved.
//

import Foundation

class game301 {
    var stuff:[(name: String, value: Int)] = []
    //stuff.append(name: "test 2", value: 2)
    
    var name: String
    var totalScore: Int = 0
    
    init(withName name: String) {
        self.name = name
    }
    
    static func player() -> [game301] {
        var player = [game301]()
        
        player.append(game301(withName: "Jake"))
        player.append(game301(withName: "Vincent"))
        player.append(game301(withName: "Cath"))
        return player
    }
    
    
    
    func printScore()->()  {
        
      
        
        print(stuff)
    }
//
//    func checkGameScore {
//        
//    }
//    
//    func checkRound {
//        
//    }
}