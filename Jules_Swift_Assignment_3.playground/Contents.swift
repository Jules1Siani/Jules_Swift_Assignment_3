
/*Create a super class named Ship
Ship (superclass)
name
year
countryOfOrigin
add an appropriate initializer */

class Ship {
    let name: String
    let year: Int
    let countryOfOrigin: String
    
    init(name: String, year: Int, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
    
    
    func printDetailsOfShip() {
        print("Ship Name: \(name)")
        print("Year: \(year)")
        print("Country of Origin: \(countryOfOrigin)")
    }
    
}
    
    
    /*Create a subclass named CruiseShip
     CruiseShip (subclass)
     maxCapacity
     oceanOfOperation
     currentPassengerCount
     add a method to add a passenger if the ship is not at max capacity
     add a method to print the current passenger count
     */
    
class CruiseShip: Ship {       // subclass named CruiseShip
    let maxCapacity: Int
    let oceanOfOperation: String
    var currentPassengerCount: Int = 0
    
    init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String) {   // init
        self.maxCapacity = maxCapacity
        self.oceanOfOperation = oceanOfOperation
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    
    
    
    func AddaPassenger() -> Void {     //method to add a passenger if the ship is not at max capacity
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 1
            print(("The current passenger count is: \(currentPassengerCount)"))
            
        } else {
            print(("The ship is full, no more passenger please"))
        }
    }
    
    func printPassengerCount() {
        print("The current passenger count is: \(currentPassengerCount)")
    }
    
    
    func NameOfOceanOfOperation() {
        print("oceanOperator: \(oceanOfOperation)")
        
    }
    
}

    
    
    
    /* Create a subclass named CargoShip
     CargoShip (subclass)
     maxCargoCapacity
     currentCargoCount
     isInternational
     add a method to add cargo if the ship is not at max capacity
     add a method to print the current cargo count
     */
    
  class Cargoship: Ship {
        let maxCargoCapacity: Int
        var currentCargoCount: Int = 0
        let isInternational: Bool
        
        init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Int, currentCargoCount: Int, isInternational: Bool) {
            self.maxCargoCapacity = maxCargoCapacity
            self.currentCargoCount = currentCargoCount
            self.isInternational = isInternational
            super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
        }
        
      func AddaCargo() -> Void {     //method to add Cargo if the ship is not at max capacity
          if currentCargoCount < maxCargoCapacity {
              currentCargoCount += 1
              print(("The current cargo count is: \(currentCargoCount)"))
          }
          else {
              print(("The ship is full, no more Cargo please"))
          }
          
      }
            
            
            func printCargoCount() {
                print("The current cargo count is: \(currentCargoCount)")
            }
        }
        
        
        /*Create a subclass named PirateShip
         PirateShip (subclass)
         maxTreasureCapacity
         currentTreasureCount
         numberOfCannons
         add a method to add treasure if the ship is not at max capacity
         add a method to print the current treasure count
         */
        
      class PirateShip: Ship {    //Create a subclass named PirateShip
            let maxTreasureCapacity: Int
            var currentTreasureCount: Int = 0
            let numberOfCannons: Int
            
            init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Int, currentTreasureCount: Int, numberOfCannons: Int) {
                self.maxTreasureCapacity = maxTreasureCapacity
                self.currentTreasureCount = currentTreasureCount
                self.numberOfCannons = numberOfCannons
                super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
            }
            
          func AddaTreassure() -> Void {     //method to add treassure if the ship is not at max capacity
              if currentTreasureCount < maxTreasureCapacity {
                  currentTreasureCount += 1
                  print(("The current treassure count is: \(currentTreasureCount)"))
              }
              else {
                  print(("The ship is full, no more treassure please"))
              }
              
          }
                
                func printTreassureCount() {
                    print("The current treassure count is: \(currentTreasureCount)")
            }
        }
    
    
    /* Create an instance of 1 of the subclasses
     and using print statements,
     demonstrate the use of ALL the
     properties and methods of that
     class as well as the superclass 🛠
     you can do this anyway you like, but all props
     and methods must be demonstrated */
    
 let cruiseShip = CruiseShip(name: "Julesship", year: 1990, countryOfOrigin: "CMR", maxCapacity: 1, oceanOfOperation: "Pacific")

  
  // Print the detail of ship
  cruiseShip.printDetailsOfShip()

// Print name of oceanoperation
 cruiseShip.NameOfOceanOfOperation()

   // Add passengers to the cruise ship
    cruiseShip.AddaPassenger()
    
    cruiseShip.AddaPassenger()
    

