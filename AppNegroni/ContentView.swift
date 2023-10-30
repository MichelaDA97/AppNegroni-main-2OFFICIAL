//
//  ContentView.swift
//  AppNegroni
//
//  Created by Michela D'Avino on 18/10/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        
    
        
        NavigationView{
            
            VStack {
                
Spacer()
                
                Text("Welcome to Morning Growth").font(.largeTitle)
                    .fontWeight(.bold).foregroundColor(.accentColor)
                
                VStack{
                
                        //Image(systemName: "heart.fill")
                    
                    VStack{
                        Text("❤️ Create healthy habits").padding(.trailing, -9.9)
                            .foregroundColor(.accentColor)
                            .fontWeight(.semibold)
                        Text("To have success.").padding(.trailing, 50)
                        
                    }.frame(width: 200, height: 100)
              
                
                      //  Image(systemName: "checkmark.square.fill")
                    
                    VStack{
                        Text("✅ Achieve your goals")
                            .foregroundColor(.accentColor)
                            .fontWeight(.semibold)
                        Text("Small things day by day.")
                    }.frame(width: 200, height: 100)
                
                       // Image(systemName: "paintpalette.fill")
                    
                    VStack{
                        Text("📈 Watch your growth")
                            .foregroundColor(.accentColor)
                            .fontWeight(.semibold)
                        Text("See your improvement.")
                    }.frame(width: 200, height: 100)
                }
                    .padding(.leading, -20)
                    .padding(.vertical, 50)
                
                Spacer()
                
               
                NavigationLink(destination: Onboarding2View()) {
                    Text("Let's start")
                }.frame(width: 145, height: 60).background(Color.accentColor).foregroundColor(.white).fontWeight(.semibold).clipShape(RoundedRectangle(cornerRadius: 10))
                
               Spacer()
                
            }
       
            
        }
        .padding()
        
        
    }
}

#Preview {
    ContentView()
}
