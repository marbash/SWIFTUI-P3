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

struct Prayer :Hashable,Identifiable{
    var id = UUID()
    var name: String
    var time: String
    
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

var prayers: [Prayer] = [
Prayer(name: "الفجر", time: "3:44 AM"),
Prayer(name: "الشروق", time: "5:09 AM"),
Prayer(name: "الظهر", time: "11:46 AM"),
Prayer(name: "العصر", time: "3:21 pm"),
Prayer(name: "المغرب", time: "6:22 pm"),
Prayer(name: "العشاء", time: "7:45 pm")
]


//var mosques: [Mosque] = [
//    Mosque(name: "البشر", sheikh: <#T##[String]#>, area: <#T##String#>, PrayerTimes: <#T##[String]#>)
//    
//]
