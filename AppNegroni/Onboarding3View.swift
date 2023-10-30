//
//  Onboarding3.swift
//  AppNegroni
//
//  Created by Michela D'Avino on 23/10/23.
//

import SwiftUI

struct Onboarding3View: View {
    
    
    
    //@State public var isOn : Bool = true
    //  @State public var isOn1 : Bool = false
    //  @State public var isOn2 : Bool = false
    // @State public var isOn3 : Bool = false
    // @State public var isOn4 : Bool = false
    
    @ObservedObject var list : ActivitiesViewModel
    
    
    var body: some View {
        
        NavigationStack{
            
            
            
            VStack{
                
                Text("Good Morning! What are your habits to start with?").padding(.vertical).padding(.horizontal)
                
                
                
                
                ForEach(list.items){ item in
                    
                    Button(action: {
                        list.toggle(element: item)
                    }, label: {
                        Text(item.text).foregroundColor(.black)
                    })
                    .frame(width: 335, height: 50)
                    .background(Color(red: 0.96, green: 0.96, blue: 0.96)).cornerRadius(12).shadow(color: item.isOn ? .accentColor : .white, radius:  item.isOn ? 3 : 1, x: 0, y: 0).shadow(radius: 0.5)
                    
                }
                
                
                
                /*  Button(action: {isOn.toggle()}, label: {
                 Text("Drink water first💧").foregroundColor(.black)
                 }).frame(width: 335, height: 50).background(Color(red: 0.96, green: 0.96, blue: 0.96)).cornerRadius(12).shadow(color: isOn ? .accentColor : .white, radius: isOn ? 3 : 1, x: 0, y: 0).shadow(radius: 0.5)
                 
                 
                 
                 Button(action: {isOn1.toggle()}, label: {
                 Text("Have a breakfast🥞").foregroundColor(.black)
                 }).frame(width: 335, height: 50).background(Color(red: 0.96, green: 0.96, blue: 0.96)).cornerRadius(12).shadow(color: isOn1 ? .accentColor : .white, radius: isOn1 ? 3 : 1, x: 0, y: 0).shadow(radius: 0.5)
                 
                 Button(action: {isOn2.toggle()}, label: {
                 Text("To do exercise 🏋🏻").foregroundColor(.black)
                 }).frame(width: 335, height: 50).background(Color(red: 0.96, green: 0.96, blue: 0.96)).cornerRadius(12).shadow(color: isOn2 ? .accentColor : .white, radius: isOn2 ? 3 : 1, x: 0, y: 0).shadow(radius: 0.5)
                 
                 Button(action: {isOn3.toggle()}, label: {
                 Text("Meditate for 10 min🧘🏻").foregroundColor(.black)
                 }).frame(width: 335, height: 50).background(Color(red: 0.96, green: 0.96, blue: 0.96)).cornerRadius(12).shadow(color: isOn3 ? .accentColor : .white, radius: isOn3 ? 3 : 1, x: 0, y: 0).shadow(radius: 0.5)
                 
                 Button(action: {isOn4.toggle()}, label: {
                 Text("Read for 10 min📖").foregroundColor(.black)
                 }).frame(width: 335, height: 50).background(Color(red: 0.96, green: 0.96, blue: 0.96)).cornerRadius(12).shadow(color: isOn4 ? .accentColor : .white, radius: isOn4 ? 3 : 1, x: 0, y: 0).shadow(radius: 0.5)
                 */
                
                //  Spacer()
                
            }
            
            
            
        }
        
        NavigationLink(destination: ListMorningRoutineView(itemActivity: list)
        ){
            Text("Next")
        }.frame(width: 145, height:60)
            .background(Color.accentColor)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.vertical,100)
    }
}

#Preview {
    Onboarding3View(list: ActivitiesViewModel())
}
