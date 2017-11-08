//
//  File.swift
//  Projet 3
//
//  Created by Amg on 23/10/2017.
//  Copyright © 2017 Amg-Industries. All rights reserved.
//

import Foundation


class Colossus: Characters {
    
    
    //MARK: - init
    init(name: String) {
        super.init(name: name, health: 150, arms: Arc() )
    }
}

