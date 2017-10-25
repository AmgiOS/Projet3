//
//  File.swift
//  Projet 3
//
//  Created by Amg on 23/10/2017.
//  Copyright © 2017 Amg-Industries. All rights reserved.
//

import Foundation

class Mage: Characters {
    
    var nameTeam1 = Nameplayer1()
    
    //MARK: - Init
    init() {
        super.init(name: "", health: 100)
    }
    var arms = Scepter()
}
