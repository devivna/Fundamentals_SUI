//
//  Picker111.swift
//  SwiftUI-Basic
//
//  Created by Надія on 10.12.2022.
//

import SwiftUI

/*
 
 Picker( selection: Binding(), label: nil, content: Text() + .tag)
 
 */

struct Picker111: View {
    
    @State var picker = "my sister"
    @State var array = [
    "by myself", "my sister", "my brother", "my parent"
    ]
    
    
//    @State var pickerTag: String = "5"
//    @State var filterOptions = [
//    "Filter 1", "Filter 2", "Filter 3"
//    ]
    
    // backgroundColor for segmented picker (only chosen)
    // update all UISegmentedControl
//    init() {
//        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.orange
//
//        // set foreground color for selected item
//        let attributes: [NSAttributedString.Key:Any] = [
//            .foregroundColor : UIColor.white
//        ]
//        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
//}
    
    
    var body: some View {
//        VStack {
//            HStack {
//                Text("Age:")
//                Text("\(pickerTag)")
//            }
//
//                Picker(selection: $pickerTag) {
//                    Text("1-18").tag(1)
//                    Text("18-24").tag(2)
//                    Text("24-100").tag(3)
//                } label: {
//                    Text("Picker list") // ? where it use
//                }
//        }
        
//        VStack {
//            HStack {
//                Text("Age:")
//                Text("\(pickerTag)")
//            }
//
//            Picker(selection: $pickerTag) {
//                ForEach(1..<10) { age in
//                    Text("\(age) age")
//                        .font(.callout)
//
//                        .tag("\(age)")
//                }
//
//            } label: {
//                Text("Picker Menu")
//            }
//            //.pickerStyle(.inline) // 1 lime -> wheel
//            //.pickerStyle(.segmented) // 1 row table
//            //.pickerStyle(.wheel) // always like a wheel
//            //.pickerStyle(.automatic)
//            .pickerStyle(.menu)
//        }
        
        
        // Picker -> filter  (menu)
//        VStack {
//
//            HStack {
//                Text("Filter: ")
//
//                Picker(selection: $pickerTag) {
//                    ForEach(filterOptions, id: \.self) { option in
//                        Text(option)
//                    }
//                } label: {
//                    Text("P")
//                }
//                .pickerStyle(.menu)
//
//
//            }
////        }
//
//        // Picker -> filter  (segmented)
//
////        VStack {
//
//                Text("Filter: ")
//
//                Picker(selection: $pickerTag) {
//                    ForEach(filterOptions, id: \.self) { option in
//                        Text(option)
//                    }
//                } label: {
//                    Text("P")
//                }
//                .pickerStyle(.segmented)
//
//        // Picker -> filter  (automatic)
//
//            HStack {
//                Text("Filter: ")
//
//                Picker(selection: $pickerTag) {
//                    ForEach(filterOptions, id: \.self) { option in
//                        Text(option)
//                    }
//                } label: {
//                    Text("P")
//                }
//                .pickerStyle(.automatic) // based on context
//
//
//            }
//
//
//        }

        VStack {
            Text("Who would like to make dinner today?")
            Picker("Title", selection: $picker) {
                ForEach(array, id: \.self) {
                    Text($0)
                }
            }
            
        }
        
    }
}

struct Picker111_Previews: PreviewProvider {
    static var previews: some View {
        Picker111()
    }
}
