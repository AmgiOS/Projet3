//
//  File.swift
//  Projet 3
//
//  Created by Amg on 23/10/2017.
//  Copyright © 2017 Amg-Industries. All rights reserved.
//

import Foundation

// Create Character Mage
class Mage: Characters {
    
    
    //MARK: - Init
    init(name: String) {
        super.init(name: name, health: 100, arms: Scepter())
    }

    //function healing with the target
    func healing(target: Characters) {
        if health > 0 {
            if target.health > 0  {
                target.health += arms.power
                print("")
                print(name + " healing " + target.name + " give him back \(arms.power) points of health" )
                if target.health > target.maxHealth {
                    target.health = target.maxHealth
                }
            } else {
                print("Character is not possible healing because he is dead")
            }
        } else {
            print("the character is dead and not healing the target ")
        }
        
    }
}

