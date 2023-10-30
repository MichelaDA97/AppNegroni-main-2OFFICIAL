//
//  Activities.swift
//  AppNegroni
//
//  Created by Michela D'Avino on 25/10/23.
//

import Foundation



struct Activities : Identifiable, Hashable{
    
    var id = UUID()
    var text: String
    var squareSelected : Bool = false
    var isOn : Bool = false
    
 /*  static var sampleActivity : [Activities]{
        var activity = [
            Activities(id: 1, text: "Drink water frist💧"),
            Activities(id: 2, text: "Have a breakfast🥞"),
            Activities(id: 3, text: "Do exercise🏋🏻"),
            Activities(id: 4, text: "Meditate for 10 min🧘🏻"),
            Activities(id: 5, text: "Read for 15 min📖")
            
        ]
        
        
        return activity
    }*/
    
    
}
