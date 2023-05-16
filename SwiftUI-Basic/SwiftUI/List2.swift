//
//  List2.swift
//  SwiftUI-Basic
//
//  Created by Надія on 10.12.2022.
//

import SwiftUI

/*
 
 List {}

 @State var array = ["", ""]
 List{} -> ForEach(array, id: \.self) {item in Text(item)}
 
 List{} -> Section(content: )
 List{} -> Section(content: , header: View)
 List{} -> Section(content: , footer: View)

 
 Actions with List:
 
 - delete: .onDelete
    List{} -> inside List - .onDelte(perform: nameFunc)
    func delete(index: IndexSet) { array.remove(atOffsets: index) }
 - move: .onMove
    func move(index:IndexSet, int: Int) {  array.move(fromOffsets: index, toOffset: int) }
 
 List + NavigationView:
 
 - title: .navigationTitle("Animals")
 
 */


struct List2: View {
    
    @State var petAnimals = [
        "cat", "dog", "carrot", "parrot", "hamster", "gold fish"
    ]
    
    @State var farmAnimals = [
        "cow", "pig", "goose", "horse"
    ]
    
    var body: some View {
        
        // -- 1 View
        
        NavigationView {
            List {
                Section {
                    ForEach(petAnimals, id: \.self) { item in
                        Text(item.capitalized)
                            .font(.title3)
                            //.listRowBackground(view?)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    
                    //the same
            //      .onDelete { indexLabl in
            //             delete(indexPar: indexLabl)
                } header: {
                    HStack {
                        Image(systemName: "tortoise.fill")
                        Text("Pet animals")
                    }
                    
                }
                
                Section {
                    ForEach(farmAnimals, id: \.self) { item in
                        Text(item.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    
                    //the same
            //      .onDelete { indexLabl in
            //             delete(indexPar: indexLabl)
                } header: {
                    HStack {
                        Image(systemName: "pawprint.fill")
                        Text("Farm animals")
                    }
                    
                }
            }
            
            // --- listStyle
            
            .listStyle(.insetGrouped)
            //.listStyle(.inset) // = plain
            //.listStyle(.plain) // notes + width - infinity
            //.listStyle(.grouped) // width - infinity
            //.listStyle(.insetGrouped) = grouped + width with padding
            //.listStyle(.sidebar) = insetGrouped + галочка щоб скрити список
            
            .navigationTitle("Animals")
            .navigationBarItems(
                leading: addButton,
                trailing: EditButton())
            .tint(.brown) // old -> .accentColor(.brown)
        }
    }
    
    var addButton: some View {
        Button(
            action: { add() },
            label:  { Image(systemName: "plus") })
    }

    func delete(indexPar: IndexSet) {
        petAnimals.remove(atOffsets: indexPar)
    }

    func move(index:IndexSet, int: Int) {
        petAnimals.move(fromOffsets: index, toOffset: int)
    }
    
    func add() {
        petAnimals.append("Fish")
    }
}

struct List2_Previews: PreviewProvider {
    static var previews: some View {
        List2()
    }
}
