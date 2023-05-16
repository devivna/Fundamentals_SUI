//
//  V_StateObject.swift
//  SwiftUI-Basic
//
//  Created by Надія on 11.12.2022.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
    @Published var fruitArray: [FruitModel] = []
    
    func addFruits() {
        let fruit1 = FruitModel(name: "Apples", count: 4)
        let fruit2 = FruitModel(name: "Oranges", count: 7)
        let fruit3 = FruitModel(name: "Strawberries", count: 17)
        
        fruitArray.append(fruit1)
        fruitArray.append(fruit2)
        fruitArray.append(fruit3)
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }

}


struct V_StateObject: View {

   @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    HStack(spacing: 10) {
                        Text("\(fruit.count)")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.orange)
                        Text(fruit.name)
                            .font(.title3)
                    }
                }
                .onDelete(perform: fruitViewModel.deleteFruit)
                
            }
            .listStyle(.grouped)
            .navigationTitle("Fruits")
            .onAppear {
                fruitViewModel.addFruits()
            }
        }
    } // END: body

    
}

struct V_StateObject_Previews: PreviewProvider {
    static var previews: some View {
        V_StateObject()
    }
}
