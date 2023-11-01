//
//  ActivitiesViewModel.swift
//  AppNegroni
//
//  Created by Michela D'Avino on 27/10/23.
//

import Foundation


class ActivitiesViewModel : ObservableObject {
    // Data
    @Published var items = [
        Activities(text: "Drink water frist💧"),
        Activities(text: "Have a breakfast🥞"),
        Activities(text: "Do exercise🏋🏻"),
        Activities(text: "Meditate for 10 min🧘🏻"),
        Activities(text: "Read for 15 min📖")
    ]
    
    
    // User Intents
    
    func addElement(text: String) {
        // FIX ME...
      /*  if let index = items.firstIndex(of: element){
            items[index].text.insert()
        }*/
    
            let newActivity = Activities(text: text, isOn: true)
            items.append(newActivity)
        
    }
    
    func toggle(element: Activities) {
        if let index = items.firstIndex(of: element) {
            items[index].isOn.toggle()
        }
    }
    
    
    func toggleSqareSelected(element: Activities) {
        if let index = items.firstIndex(of: element) {
            items[index].squareSelected.toggle()
        }
    }
  
}



