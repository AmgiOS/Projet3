//
//  Warrior.swift
//  Projet 3
//
//  Created by Amg on 18/10/2017.
//  Copyright © 2017 Amg-Industries. All rights reserved.
//

import Cocoa



class Warrior: Characters {
    
    var nameTeam1 = Nameplayer1(namePlayer: "")
    
    //MARK: - Init
    init() {
        super.init(name: "", health: 100, score: 0)
    }
    
    var arms = Sword()
}
