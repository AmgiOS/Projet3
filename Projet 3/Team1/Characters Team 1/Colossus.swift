//
//  Colossus.swift
//  Projet 3
//
//  Created by Amg on 19/10/2017.
//  Copyright © 2017 Amg-Industries. All rights reserved.
//

import Cocoa

var nameTeam1 = Nameplayer1(namePlayer: "")

class Colossus: Characters {

    var nameTeam1 = Nameplayer1(namePlayer: "")
    
    //MARK: - init
    init() {
        super.init(name: "", health: 150, score: 0)
    }
    var arms = Arc()
}
