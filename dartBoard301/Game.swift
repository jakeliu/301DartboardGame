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
    var numberOfPlayers: Int = 4
    var menu:[Menu] = []
    var dartboard = Dartboard()
    
    init(gameNameIs gameName: String ) {
        self.gameName = gameName
    }
    
    func initMenu() -> [Menu]{
        menu.append(Menu(titleOfMenu: "301"))
        menu.append(Menu(titleOfMenu: "Setting"))
        return menu
    }
    
    func initPlayers() -> [player]{
        players.append(player(playerNameIs: "Player A"))
        players.append(player(playerNameIs: "Player B"))
        players.append(player(playerNameIs: "Player C"))
        players.append(player(playerNameIs: "Player D"))
        return players
    }
    
    
//    func initMenu() -> menu {
//        var initMenu = [Menu]()
//        
//        initMenu.append(Menu(titleOfMenu: "301"))
//        initMenu.append(Menu(titleOfMenu: "Setting"))
//        return initMenu
//    }
    
    func printNumberOfPlayers() {
        print(numberOfPlayers)
    }
    
    func setNumberOfPlayers(numberOfPlayer:Int)->() {
     //   players[numberOfPlayer]
    }
}