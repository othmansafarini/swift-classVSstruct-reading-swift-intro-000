//: Playground - noun: a place where people can play

import UIKit

//: Playground - noun: a place where people can play


//Question 1

class Giant {
    var name: String
    var weight: Double
    var homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}

let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")

fred.name = "Brick"
fred.weight = 999.2
fred.homePlanet = "Mars"

//Question 2

//Change homePlanet from 'let' to 'var'

//Question 3

struct Alien {
    var name: String
    var height: Double
    var homePlanet: String
}

var bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")

bilbo.name = "Jake"
bilbo.height = 1.43
bilbo.homePlanet = "Saturn"
print(bilbo)

//Question 4
//Change bilbo from 'let' to 'var'

//Question 5
let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")
let jason = edgar
jason.name = "Jason"
//edgar.name = "Jason"

//Question 6
var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
var charlesFromJupiter = charles
charlesFromJupiter.homePlanet = "Jupiter"
//charles.homePlanet will not change
print(charles.homePlanet)

//Question 7
struct BankAccount {
    var owner: String
    var balance: Double
    
    mutating func deposit(_ amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        balance -= amount
    }
}
// it will not work until we change the func to mutating func

//Question 8
//Changed deposit and withdraw to mutating func

//Question 9
var joeAccount = BankAccount(owner: "Joe", balance: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(50.0)
print(joeAccount.balance)
//joeAccount.balance will not change because this is a struct not class

//Question 10
class MusicLibrary {
    var tracks: [String]
    
    init() {
        tracks = []
    }
    
    func add(track: String) {
        tracks.append(track)
    }
    var library1 = MusicLibrary()
    library1.add(track: "Michelle")
    library1.add(track: "Voodoo Child")
    var library2 = library1
    library2.add(track: "Come As You Are")

