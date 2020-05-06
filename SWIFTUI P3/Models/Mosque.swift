//
//  Mosque.swift
//  SWIFTUI P3
//
//  Created by MOHD ALARBASH on 5/6/20.
//  Copyright © 2020 MOHD ALARBASH. All rights reserved.
//

import Foundation


struct Mosque :Hashable,Identifiable{
    var id = UUID()
    var name: String
    var pic: String
    //var sheikh: [String]
    var area: String
    //var PrayerTimes: [String]
    
}
struct Sheikh :Hashable,Identifiable{
    var id = UUID()
    var name: String
    var pic: String
    
}

var mosques: [Mosque] = [
Mosque(name: "البشر", pic: "Mosque1", area: "مشرف"),
Mosque(name: "المشعان", pic: "Mosque2", area: "مشرف"),
Mosque(name: "الشمروخ", pic: "Mosque3", area: "مشرف"),
]

var sheikhs: [Sheikh] = [
Sheikh(name: "مشاري العفاسي", pic: "mishary-rashid-alafasy"),
Sheikh(name: "فهد الكندري", pic: "fahd-al-kandari"),
Sheikh(name: "صلاح الهاشم", pic: "salah-al-hashem"),
]

//var mosques: [Mosque] = [
//    Mosque(name: "البشر", sheikh: <#T##[String]#>, area: <#T##String#>, PrayerTimes: <#T##[String]#>)
//    
//]
