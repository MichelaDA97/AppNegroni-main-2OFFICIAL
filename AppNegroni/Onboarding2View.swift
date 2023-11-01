//
//  Oboarding2.swift
//  AppNegroni
//
//  Created by Michela D'Avino on 22/10/23.
//

import SwiftUI

struct Onboarding2View: View {
    

    
    @State public var selected: Bool = false
    @State public var selected1: Bool = false
    @State public var selected2: Bool = false
    @State public var selected3: Bool = false
    @State public var selected4: Bool = false
    @State public var selected5: Bool = false
    @State public var selected6: Bool = false
    
    var body: some View {
       
            VStack(alignment: .listRowSeparatorLeading){
                Text("Hello👋🏼 how are you? Why are you here?").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.medium).foregroundColor(.accentColor)
                Text("You can select as many as you want.")
            }.padding(.vertical, 40)
            
            ScrollView{
                VStack{
                    Spacer()
                    
                    
                    
                    /*Toggle(isOn: $selected, label: {
                        Text("i feel stressed")
                    }).toggleStyle(.button)
                    
                    
                    Button("I feel stressed") {
                              selected1.toggle()
                    }

                        if selected1 {
                              Text("i feel stressed")
                              .frame(width: 354, height: 45, alignment: .center)
                              .background(Color(red: 0.96, green: 0.96, blue: 0.96))

                              .cornerRadius(12)
                              .shadow(color: .black.opacity(0.25), radius: 5, x: 0, y: 0)
                              .overlay(
                              RoundedRectangle(cornerRadius: 12)
                              .inset(by: -0.75)
                              .stroke(Color(red: 0.06, green: 0.53, blue: 0.55), lineWidth: 1.5)

                              )
                          }*/
                    
                   
        
                    
                    Button(action: {selected.toggle()}, label: {
                        Text("I feel stressed").foregroundColor(.black)
                    }).frame(width: 335, height: 50).background(Color(red: 0.96, green: 0.96, blue: 0.96)).cornerRadius(12).shadow(color: selected ? .accentColor : .white, radius: selected ? 3 :1, x: 0, y: 0).shadow(radius: 0.5)
                    
                    Spacer()
                    
                    Button(action: {selected1.toggle()}, label: {
                        Text("I procrastinate too much")
                            .foregroundColor(.black)
                        
                    }).frame(width: 335, height: 50).background(Color(red: 0.96, green: 0.96, blue: 0.96)).cornerRadius(12).shadow(color: selected1 ? .accentColor : .white, radius: selected1 ? 3 : 1, x: 0, y: 0).shadow(radius: 0.5)
                    
                    Spacer()
                    
                    Button(action: {selected2.toggle()}, label: {
                        Text("I feel anxious")
                            .foregroundColor(.black)
                        
                    }).frame(width: 335, height: 50).background(Color(red: 0.96, green: 0.96, blue: 0.96)).cornerRadius(12).shadow(color: selected2 ? .accentColor : .white, radius : selected2 ?  3: 1, x: 0, y: 0).shadow(radius: 0.5)
                    
                    Spacer()
                    
                    Button(action: {selected3.toggle()}, label: {
                        Text("I want to quit smoking")
                            .foregroundColor(.black)
                        
                    }).frame(width: 335, height: 50).background(Color(red: 0.96, green: 0.96, blue: 0.96)).cornerRadius(12).shadow(color: selected3 ? .accentColor : .white, radius: selected3 ? 3: 1, x: 0, y: 0).shadow(radius: 0.5)
                    
                    Spacer()
                    
                    Button(action: {selected4.toggle()}, label: {
                        Text("I'm not able to organise my day")
                            .foregroundColor(.black)
                        
                    }).frame(width: 335, height: 50).background(Color(red: 0.96, green: 0.96, blue: 0.96)).cornerRadius(12).shadow(color: selected4 ? .accentColor : .white, radius: selected4 ? 3: 1, x: 0, y: 0).shadow(radius: 0.5)
                    
                    Spacer()
                    
                    Button(action: {selected5.toggle()}, label: {
                        Text("I'm not in good mood")
                            .foregroundColor(.black)
                        
                    }).frame(width: 335, height: 50).background(Color(red: 0.96, green: 0.96, blue: 0.96)).cornerRadius(12).shadow(color: selected5 ? .accentColor : .white, radius: selected5 ? 3: 1, x: 0, y: 0).shadow(radius: 0.5)
                    
                    Spacer()
                    
                    Button(action: {selected6.toggle()}, label: {
                        Text("I spend a lot of time on social network")
                            .foregroundColor(.black)
                        
                    }).frame(width: 335, height: 50).background(Color(red: 0.96, green: 0.96, blue: 0.96)).cornerRadius(12).shadow(color: selected6 ? .accentColor : .white, radius: selected6 ? 3: 1, x: 0, y: 0).shadow(radius: 0.5)
                    
                    
                    Spacer()
                    
                    
                }.padding()
                
                
            }
            
        NavigationLink( destination: Onboarding3View(list: ActivitiesViewModel())){
                Text("Next")
            }
        .frame(width: 145, height: 60)
            .background(Color.accentColor)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            
                .padding(.vertical, 60.0)
        }
    }

#Preview {
    Onboarding2View()
}


