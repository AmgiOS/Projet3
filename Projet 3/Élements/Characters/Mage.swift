//
//  File.swift
//  Projet 3
//
//  Created by Amg on 23/10/2017.
//  Copyright © 2017 Amg-Industries. All rights reserved.
//

import Foundation

class Mage: Characters {
    
    
    //MARK: - Init
    init(name: String) {
        super.init(name: name, health: 100, arms: Scepter())
    }
}

