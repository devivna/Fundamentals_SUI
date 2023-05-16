//
//  ListSwipeActions.swift
//  SwiftUI-Basic
//
//  Created by Students on 15.12.2022.
//

import SwiftUI

/*
 
 List{} -> Text() .swipeActions(edge: .trailing / .leading, allowsFullSwipe: true(1) / false(>1), content: View)
    Button {} .tint(.red)
 Text() .swipeActions() .swipeActions()
 */


struct ListSwipeActions: View {
    
    @State var fruits =  [
    "orange", "apple", "mango", "kiwi"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(
                        edge: .trailing,
                        allowsFullSwipe: false) {
                                Button {
                                    //
                                } label: {
                                    Text("Share")
                                }
                            
                                Button {
                                    //
                                } label: {
                                    Text("Delete")
                                }
                        }
                        .tint(.brown.opacity(0.5))
                        .swipeActions(
                            edge: .leading,
                            allowsFullSwipe: true) {
                                    Button {
                                        //
                                    } label: {
                                        Text("Share")
                                    }
                                    .tint(.green.opacity(0.5))
                            }
                            
            }
            //.onDelete(perform: deleteItem)
        }
    }
    
    func deleteItem(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
}

struct ListSwipeActions_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActions()
    }
}
