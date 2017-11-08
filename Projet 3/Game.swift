//
//  File.swift
//  Projet 3
//
//  Created by Amg on 23/10/2017.
//  Copyright © 2017 Amg-Industries. All rights reserved.
//

import Foundation

//Interface New game

class Game {
 
    var teams = [Team]()
    var choicePlayer = 0
    var boucleInfinite = true
    
    func inputInt() -> Int {
        let strData = readLine();
        return Int(strData!)!
    }
    
    
    func start() {
        welcome()
        for _ in 0..<2 {
            let team = Team()
            team.characters = createNewTeamCharacters()
            teams.append(team)
        }
    }
    
    func createNewTeamCharacters() -> [Characters] {
        var charactersListe = [Characters]()
        var charactersName = ""
        var choiceUser = 0
        
        for i in 0..<3 {
            print("Create your character n° \(i + 1)")
            print("1: Warrior")
            print("2: Mage")
            print("3: Dwarf")
            print("4: Colossus")
            
            repeat {
                choiceUser = inputInt()
            } while choiceUser != 1 && choiceUser != 2 && choiceUser != 3 && choiceUser != 4
            
            repeat {
                charactersName = readLine()!
            } while charactersName == ""
            
            switch choiceUser {
                case 1:
                    let warrior = Warrior(name: charactersName)
                     charactersListe.append(warrior)
                case 2:
                    let mage = Mage(name: charactersName)
                    charactersListe.append(mage)
                case 3:
                    let dwarf = Dwarf(name: charactersName)
                    charactersListe.append(dwarf)
                case 4:
                    let colossus = Colossus(name: charactersName)
                    charactersListe.append(colossus)
                default:
                    break
            }
        }
        return charactersListe
    }


    
    //    MARK: MENUS
    func welcome() {
        print("Welcome to the Game")
        print("")
        print("""
        You got to create 2 teams wich are going to be in
        confrontation and the team which beats
        the other one has to take away to gain the party
        """)
    }

    func menuTeam() {
    print("Add Characters for Team 1 :",
        "\n1. Warrior",
        "\n2. Mage",
        "\n3. Dwarf",
        "\n4. Colossus")
    }
    
    func menuteam2() {
    print("Add Characters for Team 2 :",
        "\n1. Warrior",
        "\n2. Mage",
        "\n3. Dwarf",
        "\n4. Colossus")
    }
    
    //    MARK: ACTION GAME

    func fight() {
        print("Choice you Action")
        print("1 - Attack")
        print("2 - healing")
        print("3 - Improve Your Arms")
        
    }
    
    
    
//    func winner() {
//        if team1.count == 0 {
//            print("Winner is Team2")
//        } else if team2.count == 0 {
//            print("Winner is team 1")
//        }
//    }
//

    

}
    



