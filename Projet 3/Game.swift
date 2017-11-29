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
    var uniqueNames = [String]()
    var teamNames = [String]()
    
    //function input check if we use a number
    func inputInt() -> Int {
        guard let data = readLine() else { return 0 }
        guard let dataToInt = Int(data) else { return 0 }
        return dataToInt
    }
    
    //function check if we use a string
    func inputString() -> String {
        guard let data = readLine() else { return "" }
        return data
    }
    
    //Function Create the party
    func start() {
        welcome()
        //Create 2 teams
        for i in 0..<2 {
            let team = Team()
            print("")
            print("Name your team \(i + 1)")
            let nameOfTeam = inputString()
            teamNames.append(nameOfTeam)
            team.characters = createNewTeamCharacters()
            teams.append(team)
        }
        round()
    }
    
    //Function round in round
    func round() {
        var choiceUser = 0
        var choiceCharacter: Characters?

        if teams.count >= 2 {
         
            repeat {
                for i in 0..<2 {
                    print("")
                    print("Team \(i + 1) \(teamNames[i]) it's your turn")
                    displayCharacters(team: teams[i])
                    repeat {
                        choiceUser = inputInt()
                    } while choiceUser != 1 && choiceUser != 2 && choiceUser != 3
                    
                    choiceCharacter = teams[i].characters[choiceUser - 1]
                    guard let currentCharacter = choiceCharacter else  { return }
                    chest(character: currentCharacter)
                    
                    //When is character Mage plays
                    if let character = currentCharacter as? Mage {
                        print("")
                        print("Which member of the team wants to treat you?")
                        displayCharacters(team: teams[i])
                        
                        repeat {
                            choiceUser = inputInt()
                        } while choiceUser != 1 && choiceUser != 2 && choiceUser != 3
                        
                        character.healing(target: teams[i].characters[choiceUser - 1])

                    } else {
                        print("")
                        print("which member of the team opponents want to attack?")
                        if i == 0 {
                            //When team 1 plays
                            displayCharacters(team: teams[i + 1])
                            
                            repeat {
                                choiceUser = inputInt()
                            } while choiceUser != 1 && choiceUser != 2 && choiceUser != 3
                            
                            currentCharacter.attack(target: teams[i + 1].characters[choiceUser - 1])
                            if teamDead(team: teams[i + 1]) {
                                print("")
                                print("The win is team \(teamNames[i]) Congralutation !. ")
                                return
                            }
                        } else {
                            // When team 2 plays
                            displayCharacters(team: teams[i - 1])
                            
                            repeat {
                                choiceUser = inputInt()
                            } while choiceUser != 1 && choiceUser != 2 && choiceUser != 3
                            
                            currentCharacter.attack(target: teams[i - 1].characters[choiceUser - 1])
                            if teamDead(team: teams[i - 1]) {
                                print("")
                                print("the win is team \(teamNames[i]) Congralutation !. ")
                                return
                            }
                        }
                    }
                }
                
            } while teams.count != 1
        }
    }
    //check if one of the two teams is dead
    func teamDead(team : Team) -> Bool {
        var isDead = false
        
        //check if all characters of the teams is dead
        for i in 0..<team.characters.count {
            let character = team.characters[i]
            
            if character.health == 0 {
                isDead = true
            } else {
                return false
            }
        }
        return isDead
    }
    
    // Create function to display the characters
    func displayCharacters(team: Team) {
        let charactersCount = team.characters.count
        
        //check all characters and display
        for i in 0..<charactersCount {
            let character = team.characters[i]
            if character.health > 0 {
                print("\(i + 1) " + character.name + " Pv:  \(character.health), damage: \(character.arms.damage), Power: \(character.arms.power)" )
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
        
        
        //Create 3 characters by team
        for i in 0..<3 {
            print("")
            print("Create your character n° \(i + 1)")
            print("1: Warrior")
            print("2: Mage")
            print("3: Dwarf")
            print("4: Colossus")
            
            repeat {
                choiceUser = inputInt()
            } while choiceUser != 1 && choiceUser != 2 && choiceUser != 3 && choiceUser != 4
            
            repeat {
                print("")
                print("Name her")
                charactersName = inputString()
                if uniqueNames.contains(charactersName) {
                    print("name is already used")
                    charactersName = ""
                } else {
                    uniqueNames.append(charactersName)
                    }
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
    
    //function of the chest in party game
    func chest(character: Characters) {
        let randomNumber = arc4random_uniform(5)
        
        if randomNumber == 3 {
            print("a chest appears")
            
            if character is Mage {
                print("the Mage his weapon becomes Scepter Ultimate")
                let scepterUltimate = ScepterUltimate()
                character.arms = scepterUltimate
            } else {
                print("his weapon becomes Dark Sword ")
                let thedarksword = DarkSword()
                character.arms = thedarksword
            }
        }
        
    }
    
    // MENUS
    func welcome() {
        print("Welcome to the Game")
        print("")
        print("""
        You got to create 2 teams wich are going to be in
        confrontation and the team which beats
        the other one has to take away to gain the party
        """)
    }
}
    



