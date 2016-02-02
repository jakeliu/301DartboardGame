//
//  player.swift
//  dartBoard301
//
//  Created by Jiunn-Jye Liu on 1/16/16.
//  Copyright © 2016 Jiunn-Jye Liu. All rights reserved.
//

import Foundation

class player {
    var name: String
    var numberOfTotalWin: Int = 0
    var roundScore: Int = 0
    var totalScore: Int = 0
    var currentShot: Int = 1
    
    init(playerNameIs name: String ) {
        self.name = name
    }
}