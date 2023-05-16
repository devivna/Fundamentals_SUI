//
//  Form1.swift
//  Stack
//
//  Created by Надія on 04.11.2022.
//

import SwiftUI

/*
 #
 
 */

struct Form1: View {
    let today = Date().formatted(as: "MMM d")
    let yesterday = Date().addingTimeInterval(-86400).formatted(as: "MMM d")
    let exercises1 = ["ex1", "ex2", "ex3", "ex4",]
    let exercises2 = ["ex1", "ex2", "ex3", ]
    
    var body: some View {
            
            Form {
                Section {
                    ForEach(exercises1, id: \.self) { i in
                        Text(i)
                    }
                } header: {
                    Text(today)
                }
                
               
                
                Section {
                    ForEach(exercises2, id: \.self) { i in
                        Text(i)
                    }
                } header: {
                    Text(yesterday)
                }
                
//            }
        }
    }
}

//struct Form1: View {
//    @State private var colors = ["red", "green", "blue"]
//    @State private var selectedColor = 0
//    @State private var additionalSettings = false
//
//    var body: some View {
//        NavigationView {
//            Form {
//                Section(header: Text("Colors")) {
//                    Picker(selection: $selectedColor, label: Text("Select a color")) {
//                        ForEach(0..<3) {
//                            Text(self.colors[$0])
//                        }
//                    }
//                } .pickerStyle(.segmented)
//
//
//                Toggle(isOn: $additionalSettings) {
//                    Text("Addition settings")
//                }
//                Button(action: {
//                    //
//                }) {
//                    Text("Save changes")
//                } .disabled(!additionalSettings)
//            } .navigationTitle("Settings")
//        }
//    }
//}

struct Form1_Previews: PreviewProvider {
    static var previews: some View {
        Form1()
    }
}
