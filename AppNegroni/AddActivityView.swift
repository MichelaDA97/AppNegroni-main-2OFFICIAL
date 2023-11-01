//
//  AddActivityView.swift
//  AppNegroni
//
//  Created by Michela D'Avino on 24/10/23.
//

import SwiftUI

struct AddActivityView: View {
    
    @State var textFieldText : String = ""
// @State var saveShow : Bool = false
// @State var dismissShow : Bool = false
    @State var reminderOn : Bool = false
    
    @State var time = Date()
    
    var list: ActivitiesViewModel
    
  /*  func saveActivity() {
     
         
         let newActivity = Activities(text: textFieldText)
         
         list.items.append(newActivity)
         
         
         print(newActivity)
         
         // Reset fields after saving an activity
         textFieldText = ""
         reminderOn = false
         time = Date()
         
     }*/
    
    
    func saveButtonPressed(){
        list.addElement(text: textFieldText)
        
        textFieldText = ""
        reminderOn = false
        time = Date()
       
    }
    
    var body: some View {
        
        
      
            NavigationStack{
                
                
                TextField("Type something here..", text: $textFieldText)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                    .cornerRadius(12)
                    .shadow(radius: 0.5)
                    .padding(.vertical,30)
                
              //  Spacer()
                
                
                
              /*  Toggle(isOn: $reminderOn) {
                    HStack{
                        Text("Reminder")
                        DatePicker("", selection: $time)
                    }
                }
                .padding(.horizontal,30)
              */
                
                
                Button(action:  saveButtonPressed, label: {
                    
                        Text("Save".uppercased())
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(Color.accentColor)
                            .cornerRadius(12)
                            .padding(.vertical)
                    
                })
                    
                
                
                 /*   .toolbar{
                        
                        Button(action: saveButtonPressed , label: {
                            Text("Save")
                        })
                        
                        
                    }*/
                
                /*     ToolbarItem(placement: .navigationBarLeading){
                 Button{
                 dismissShow.toggle()
                 }label: {
                 Text("Dismiss").fontWeight(.semibold)
                 }
                 } */
                
                Spacer(minLength: 500)
                
                
                
              
            }.padding(14)
        
    }
}

#Preview {
    
    AddActivityView(list: ActivitiesViewModel())
    
}
