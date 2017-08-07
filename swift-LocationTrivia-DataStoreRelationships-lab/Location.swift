//
//  Location.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Flatiron School on 6/27/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Location {
    
    let name: String //The name of the place is a constant
    let latitude: Float //Constant latitude
    let longitude: Float //Constant longitude
    var trivia: [Trivium] //An array of type Trivium (which we created that class!)
    
    init (name: String, latitude: Float, longitude: Float, trivia: [Trivium] = []) { //The default initializer where all values are instantiated at once.
        self.name = name //set the class' name property equal to the name that was just given.
        self.latitude = latitude //same for the lat
        self.longitude = longitude //same for lon
        self.trivia = trivia // same for trivia
    }
    
    convenience init() { //If created with no input it will use the default initializer (as seen below) with those given attributes.
        self.init(name: "", latitude: 0.0 , longitude: 0.0)
    }
    
    func stringByTruncatingNameToLength(_ length: Int) -> String {
        if length > self.name.characters.count {return self.name}
        return String(self.name.characters.dropLast(self.name.characters.count - length)) //We use this to make the name of the string fit within a certain length.
        
        /* solution with substring
         
         return name.substring(to: name.index(name.startIndex, offsetBy: length))
         
         */
    }
    
    func hasValidData() -> Bool {
        if name.characters.count == 0 {return false}
        if latitude < -90.0 || latitude > 90.0 {return false}
        if longitude <= -180.0 || longitude > 180.0 {return false}
        return true
        //Checks to make sure that the inputs are valid someone could not have a longitude of anything other than -90...90 and same with longitude -180...180.
    }
    
    func triviumWithMostLikes() -> Trivium? { //Uses this to return the most popular piece of trivia.
        if trivia.count == 0 {return nil}
        var triviumWithMostLikes = trivia[0]
        for currentTrivium in trivia {
            if triviumWithMostLikes.likes < currentTrivium.likes {triviumWithMostLikes = currentTrivium}
        }
        return triviumWithMostLikes
    }
}
