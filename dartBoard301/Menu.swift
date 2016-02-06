//
//  Menu.swift
//  dartBoard301
//
//  Created by Jiunn-Jye Liu on 2/5/16.
//  Copyright © 2016 Jiunn-Jye Liu. All rights reserved.
//

import Foundation

struct Menu {
    var title: String
    var numberOfPlayer: Int = 4
    
    init(titleOfMenu title: String ) {
        self.title = title
    }
    
    static func initMenu() -> [Menu] {
        var initMenu = [Menu]()
        
        initMenu.append(Menu(titleOfMenu: "301"))
        initMenu.append(Menu(titleOfMenu: "Setting"))
        return initMenu
    }
}