//
//  ListMorningRoutineView.swift
//  AppNegroni
//
//  Created by Michela D'Avino on 24/10/23.
//


import SwiftUI
import SwiftData

struct ListMorningRoutineView: View {
    
    
    @State var plusShow: Bool = false
    @State var squareSelected : Bool = false
    
    
    var quotesView = MotivationalQuotesViewModel()
    
    @ObservedObject var itemActivity: ActivitiesViewModel
    
    
    
    // @Binding var isOn : Bool
    //@Binding var isOn1 : Bool
    //@Binding var isOn2 : Bool
    //@Binding var isOn3 : Bool
    //@Binding var isOn4 : Bool
    
    
    
    
    
    
    
    func removeItem(at offsets : IndexSet){
        itemActivity.items.remove(atOffsets: offsets)
    }
    
    
    func moveItem(from: IndexSet, to: Int){
        itemActivity.items.move(fromOffsets: from, toOffset: to)
    }
    
    
    
    var body: some View {
        
        NavigationStack{
            
            
            
            
            ScrollView(.horizontal){
                HStack{
                    
                    ForEach(quotesView.quotes){
                        quote in
                        VStack(alignment: .leading){
                            Text(quote.text).fontWeight(.semibold)
                            Text(quote.nameAuthor).fontWeight(.medium)
                        }.frame(width:350, height: 133).border(Color.accentColor, width: 3).clipShape(RoundedRectangle(cornerRadius: 7))
                        
                        //.background(Color.accentColor).opacity(0.9).cornerRadius(25)
                        
                        
                    }
                    
                }.padding(.vertical)
                
                //   Spacer()
                
            }
            .navigationTitle("Morning Routine")
          //  .navigationBarItems(trailing: NavigationLink("Add", destination: AddActivityView( list: itemActivity)))
            
            
           .toolbar {
                // ToolbarItem(placement: .primaryAction){
                /* Button{
                 editShow.toggle()
                 } label: {
                 Image(systemName: "rectangle.and.pencil.and.ellipsis")
                 }.sheet(isPresented: $editShow){
                 EditActivityView().presentationDetents([.large])
                 }*/
                
                
                Button{
                    plusShow.toggle()
                    
                }label: {
                    Image(systemName: "plus")
                }.sheet(isPresented: $plusShow){
                    AddActivityView(list: itemActivity).presentationDetents([.large])
                }
                
            }
            
            
            
            
            List{
                
                ForEach(itemActivity.items) { item in
                    
                    
                    if item.isOn
                    {
                        
                        HStack{
                            Button(action: {
                                itemActivity.toggleSqareSelected(element: item)
                            }, label: {
                                Image(systemName: item.squareSelected ? "checkmark.square" : "square").foregroundColor(.accentColor)
                            })
                            Text(item.text)
                        }
                        
                        
                        
                    }
                    
                    
                    
                }
                .onDelete(perform: removeItem)
                .onMove(perform: moveItem)
                
            }
            .listStyle(PlainListStyle())
            
            
            
            
            
            
            /*List{
             if isOn {
             HStack{
             Button(action: {squareSelected.toggle()}, label: {
             Image(systemName: squareSelected ? "checkmark.square" : "square").foregroundColor(.accentColor)
             })
             Text(itemActivity.items[0].text)
             }
             }
             
             if isOn1 {
             HStack{
             Button(action: {squareSelected1.toggle()}, label: {
             Image(systemName: squareSelected1 ? "checkmark.square" : "square").foregroundColor(.accentColor)
             })
             Text(itemActivity.items[1].text)
             }
             }
             
             
             if isOn2 {
             HStack{
             Button(action: {squareSelected2.toggle()}, label: {
             Image(systemName: squareSelected2 ? "checkmark.square" : "square").foregroundColor(.accentColor)
             })
             Text(itemActivity.items[2].text)
             }
             }
             
             
             if isOn3 {
             HStack{
             Button(action: {squareSelected3.toggle()}, label: {
             Image(systemName: squareSelected3 ? "checkmark.square" : "square").foregroundColor(.accentColor)
             })
             Text(itemActivity.items[3].text)
             }
             }
             
             
             if isOn4{
             HStack{
             Button(action: {squareSelected4.toggle()}, label: {
             Image(systemName: squareSelected4 ? "checkmark.square" : "square").foregroundColor(.accentColor)
             })
             Text(itemActivity.items[4].text)
             }
             }
             }
             .listStyle(PlainListStyle())
             
             */
            
            
            
        }
        .navigationBarBackButtonHidden(true)
        
    }
}



#Preview {
    ListMorningRoutineView(itemActivity: ActivitiesViewModel())
}
