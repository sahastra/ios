import UIKit

//1.declaring constants and variables
//1.1 Constants
let msg = "hello !"
print (msg)

//1.2Variables
var name : String = ""
print (name)

var address : String = "Tokyo"
print(address)

var email : String? = nil
print (email ?? "Unknown")

var age : Int? = nil
print (age ?? -1) //set default value after ??, which is 1

//2. Using optionals

//below code crash due to email is still nil and can not be unwrapped with !, this is called forced unwrapped
//hench for safer execution if let block as shown later

//print(email!)
//print("Email Unwrapped : " + email!)

email = "my@email.com"

//if let block
if let myemail = email {
    print("Email Unwrapped with let: " + myemail)
} else {
    print ("Email is nil")
}


//Class declaration

class Player {
    //must have init values
    var id: String
    var score : Int
    
    init(id: String, score: Int) {
        self.id = id
        self.score = score
    }
}

var player1 : Player = Player(id : "myid", score : 108)
print(player1.id)
print(player1.score)


//Inheritance
class GoPlayer : Player {
    
}

var goPlayer1 : GoPlayer = GoPlayer(id : "mygoid", score : 777)
print(goPlayer1.id)
print(goPlayer1.score)

//Method override
class Pokemon {
    //must have init values
    
    public var id : String
    var hp: Double
    
    init(id: String, hp: Double) {
        self.id = id
        self.hp = hp
    }
    
    func jump () {
        print("Pokemon jumping...")
    }
}

//inheritance
class Giratina : Pokemon {
    
    override func jump () {
        print("Giratina jumping...")
    }
}

//inheritance
class Mewto : Pokemon {
    
    override func jump () {
        print("Mewto jumping...")
    }
}

//inheritance
class Lucario : Pokemon {
    
    override func jump () {
        print("Lucario jumping...")
    }
}

//Processor class
class PokemonCenter {
    
    //polymorphic method
    func chargePokemon (pokemon: Pokemon) {
        
        let originalHp : Double = pokemon.hp
        
        if pokemon.hp <= 100 {
            pokemon.hp = 200
            print("Charged mypokemon " + pokemon.id + ", from HP = " + String(originalHp) + " to HP = " + String(pokemon.hp))
        }
    }
}

var myPokemon1 = Giratina(id: "p1", hp: 200)
var myPokemon2 = Mewto(id: "p2", hp: 100)
var myPokemon3 = Lucario(id: "p3", hp: 70)

var pokemonCenter = PokemonCenter()
pokemonCenter.chargePokemon(pokemon: myPokemon1)
pokemonCenter.chargePokemon(pokemon: myPokemon2)
pokemonCenter.chargePokemon(pokemon: myPokemon3)

print ("myPokemon1 hp after change = " + String(myPokemon1.hp))
print ("myPokemon2 hp after change = " + String(myPokemon2.hp))
print ("myPokemon3 hp after change = \(myPokemon3.hp)")

//more about functions
//func = keyword, getMedalName = function name, distance = argument label (optional), with = paramater name, Double = parameter type, String = func return type

//declare function
func getMedalName(distance with : Double) -> String {
    return "Gold"
}

//call function
var myMedal = getMedalName(distance : 200) //call with argument label, 200 is an argument
print (myMedal)

//function with multiple return values

func getCoordinates () -> (Double, Double) {
    let x = 10.2
    //x = 10  //not allowed as x is a constant
    var y = 21.3
    y = 57
    return (x, y)
}

var xy = getCoordinates()
print(xy)


//declare function which will allow arument without specifying the argument label or paramater name

func getScore(_ id: String) -> Double {
    print  ("Returning score for the id \(id)")
    return 97
}

var score = getScore("A7") //argument as a student's id
print(score)

//#Control statements
//if copare numbers, strings

//#switch

//#Loops
//for in
for x in 1..<5 {
    print ("Index is \(x)")
}

//var cityList : [String] = ["Tokyo" , "Osaka", "Nagoya"]
var cityList = ["Tokyo" , "Osaka", "Nagoya"]

for city in cityList {
    print(city + " " , terminator:"") //terminator will print the output in one line
}

//while
var count = 1

while (count <= 3) {
        print("Count is \(count)")
    count = count + 1
}

//repeat (similar to do...while)

//#Data Structures
//Array
//Set
//Dictionary

