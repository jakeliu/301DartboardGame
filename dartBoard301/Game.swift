//
//  Game.swift
//  dartBoard301
//
//  Created by Jiunn-Jye Liu on 2/5/16.
//  Copyright © 2016 Jiunn-Jye Liu. All rights reserved.
//

import Foundation

class Game {
    var gameName: String
    var players:[player] = []
    var numberOfPlayers: Int = 0
    var menu:Menu?
    
    init(gameNameIs gameName: String ) {
        self.gameName = gameName
    }
    
    func initMenu() -> [Menu] {
        var initMenu = [Menu]()
        
        initMenu.append(Menu(titleOfMenu: "301"))
        initMenu.append(Menu(titleOfMenu: "Setting"))
        return initMenu
    }
    
    func printNumberOfPlayers() {
        print(numberOfPlayers)
    }
    
    func setNumberOfPlayers(numberOfPlayer:Int)->() {
     //   players[numberOfPlayer]
    }
}