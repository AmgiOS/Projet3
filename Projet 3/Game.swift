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
    
    func inputInt() -> Int {
        guard let data = readLine() else { return 0 }
        guard let dataToInt = Int(data) else { return 0 }
        return dataToInt
    }
    
    func start() {
        welcome()
        for _ in 0..<2 {
            let team = Team()
            team.characters = createNewTeamCharacters()
            teams.append(team)
        }
        
        
    }
    
    func round() {
        var choiceUser = 0
        var choiceCharacter: Characters?
        
        if teams.count >= 2 {
         
            repeat {
                
                for i in 0..<2 {
                    print("Team \(i + 1) a vous de jouer")
                    displayCharacters(team: teams[i])
                    repeat {
                        choiceUser = inputInt()
                    } while choiceUser != 1 && choiceUser != 2 && choiceUser != 3
                    choiceCharacter = teams[i].characters[choiceUser - 1]
                    
                    if let character = choiceCharacter as? Mage {
                        print("Quel membre de l'equipe veut tu soigner?")
                        // lister les characters a soigner
                        // selectionner le personnage a soigner
                        // soigner le perso avec la fonction healing
                    } else {
                        print("Quel membre de l'equipe adverse souhaiter vous attaquer")
                        if i == 0 {
                            // (quand l'equipe 1 attaque)
                            // lister les perso equipe 2
                            // selectionner la cible
                            // attaquer la cible
                        } else {
                            // (quand l'equipe 2 attaque)
                            // lister les perso equipe 1
                            // selectionner la cible
                            // attaquer la cible
                        }
                    }
                }
                
            } while teams.count != 1
            
            
        }
        
        
        
    }
    
    func displayCharacters(team: Team) {
        let charactersCount = team.characters.count
        
        for i in 0..<charactersCount {
            let character = team.characters[i]
            if character.health > 0 {
                print("\(i + 1) " + character.name + " Pv:  \(character.health) damage: \(character.arms.damage)" )
            } else {
                print(character.name + " is dead ")
            }
        }
    }
    
    // Create 2 teams
    
    func createNewTeamCharacters() -> [Characters] {
        var charactersListe = [Characters]()
        var charactersName = ""
        var choiceUser = 0
        
        for i in 0..<3 {
            print("")
            print("Create your character n° \(i + 1) press enter and name her")
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
    



