//
//  Trivium.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Flatiron School on 6/27/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Trivium {

    var likes: Int = 0 //A property designed to symbolize number of likes on a piece of trivia.
    var content: String //The property where the piece of trivia exists.
    
    convenience init () { // A convenience initializer initializes to empty content if nothign is provided.
        self.init(content: "", likes: 0)
    }
    
    init(content: String, likes: Int) { // Another initializer the default due to the requirement of the parameters.
        self.content = content
        self.likes = likes
    }
    
    //There are a couple of different types of initializers if we have time towards the end of the week, we will be able to cover them, otherwise for now, just know that if you call the init function on trivia and give it no parameters it will create a piece of trivia with 0 likes and the content will be an empty String.
}
