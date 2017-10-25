//
//  File.swift
//  Projet 3
//
//  Created by Amg on 23/10/2017.
//  Copyright © 2017 Amg-Industries. All rights reserved.
//

import Foundation

class Warrior: Characters {
    
    var nameTeam1 = Nameplayer1(namePlayer: "")
    
    //MARK: - Init
    init() {
        super.init(name: "", health: 100)
    }
    
    var arms = Sword()
}
