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
    var arms: Arms
    init(name: String, health: Int, arms: Arms) {
        self.name = name
        self.health = health
        self.arms = arms
    }
    
    func attack(target: Characters) {
        if target.health > 0 {
            target.health -= arms.damage
        } else {
            print("Target is dead ")
        }
    }
    
    func healing(target: Characters) {
        if target.health > 0 {
         target.health += arms.power
        } else {
            print("Target is dead")
        }
    }
    
    func improveArms() {
        arms.damage += 5
    }
    
    
        
        
//      while health != 0 {
//            _ = improve.damage + 5
//        }
    



}

