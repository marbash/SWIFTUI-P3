//
//  Movies.swift
//  SWIFTUI P3
//
//  Created by MOHD ALARBASH on 5/6/20.
//  Copyright © 2020 MOHD ALARBASH. All rights reserved.
//

import Foundation

struct Movie :Hashable,Identifiable{
    var id = UUID()
    var name: String
    var characters: [String]
    
}

var movies: [Movie] = [
    Movie(name: "Toy Story", characters: ["Woody", "Buzz"]),
    Movie(name: "Aladdin", characters: ["Aladdin", "Jasmine", "Genie"]),
    Movie(name: "COCO", characters: ["Meguel", "Ernesto Delacroz", "Hector"])
]


//let coco = Movie(title: "COCO", characters: ["Meguel", "Ernesto Delacroz", "Hector"])
//let aladdin = Movie(title: "Aladdin", characters: ["Aladdin", "Jasmine", "Genie"])
//let toystory = Movie(title: "Toy Story", characters: ["Woody", "Buzz"])
//
//let movies = [coco, aladdin, toystory]

