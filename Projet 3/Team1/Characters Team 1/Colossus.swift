//
//  File.swift
//  Projet 3
//
//  Created by Amg on 23/10/2017.
//  Copyright © 2017 Amg-Industries. All rights reserved.
//

import Foundation

var nameTeam1 = Nameplayer1(namePlayer: "")

class Colossus: Characters {
    
    var nameTeam1 = Nameplayer1(namePlayer: "")
    
    //MARK: - init
    init() {
        super.init(name: "", health: 150 )
    }
    var arms = Arc()
}
