//
//  Toggle, Picker, Stepper, Slider.swift
//  SwiftUI-Basic
//
//  Created by Надія on 10.12.2022.
//

import SwiftUI

/*
 toggle -> binding Bool + label
 style -> .switch .button .automatic
 
 
 */

struct Toggle111: View {

//    var title: String = ""
//    @State var change = false

    var itemsToggle = [
        "Lesson1", "Lesson2", "Lesson3"
    ]
    
    var body: some View {
        
//        VStack {
//            Text(change ? "Well done" : "")
//
//            Toggle(isOn: $change) {
//                Text("Lesson 1")
//                    .font(.headline)
//            }
//            .toggleStyle(.switch)
//        }
        
//            List {
//                ToDoList(title: "Lesson 1")
//                ToDoList(title: "Lesson 2")
//                ToDoList(title: "Lesson 3")
//            }
        
        HStack {
            ForEach(itemsToggle, id: \.self) { title in
                ToDoList(title: title)
            }
        }
        
    }
}

struct ToDoList: View {
    
    var title: String = ""
    @State var change = false

    var body: some View {
            Toggle(isOn: $change) {
                Text(title)
                    .font(.headline)
            }
            .toggleStyle(.button) // Use button style for toggles in the stack
            //.toggleStyle(.automatic)
            //.toggleStyle(.switch)
            .tint(.gray)
        
        
        
    }
}

struct Toggle__Picker__Stepper__Slider_Previews: PreviewProvider {
    static var previews: some View {
        Toggle111()
    }
}
