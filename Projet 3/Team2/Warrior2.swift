//
//  Warrior2.swift
//  Projet 3
//
//  Created by Amg on 20/10/2017.
//  Copyright © 2017 Amg-Industries. All rights reserved.
//

import Cocoa

class Warrior2: Characters {

    var nameTeam2 = Nameplayer2(name2: "")
    
    //MARK: - Init2
    init() {
        super.init(name: "", health: 100, score: 0)
    }
    
    var arms = Sword()
    
}
