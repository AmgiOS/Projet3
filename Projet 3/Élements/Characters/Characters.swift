//
//  File.swift
//  Projet 3
//
//  Created by Amg on 23/10/2017.
//  Copyright © 2017 Amg-Industries. All rights reserved.
//

import Foundation

//Creation different characters
class Characters {
    let name: String
    var health: Int
    let maxHealth : Int
    var arms: Arms
    
    init(name: String, health: Int, arms: Arms) {
        self.name = name
        self.health = health
        self.maxHealth = health
        self.arms = arms
    }
    
    //function attack with the target
    func attack(target: Characters) {
        if health > 0 {
            if target.health > 0 {
                target.health -= arms.damage
                print("")
                print(name + " attak " + target.name + " and he hurts  \(arms.damage) points of damage" )
                if target.health < 0 {
                    target.health = 0
                    print("Target is dead ")
                }
            } else {
                print("The target is already dead")
            }
        } else {
            print("the character is dead and not attak the target ")
        }
    }
}

