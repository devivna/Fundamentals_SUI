//
//  ForEachStatements.swift
//  Stack
//
//  Created by Надія on 03.11.2022.
//

import SwiftUI

/*
 
-> warning:  array + ForEach -> ForEach(array.indeces) { index in
                    Text("array[index]")
        ForEach(array + \.self) { ...}
 
 \.self - each element of the array is its own unique identifier
 */
 
struct ForEachStatements: View {
    
        let data = ["1", "2", "3"]
    
        var body: some View {
    
                // simple loop with just number
    
            VStack {
                ForEach(0..<10) { index in
                    let _ = print("Index \(index)")
                    Text("\(index)")
                }
            }
    
    // simple loop with  number + shape
    
    //        VStack {
    //            ForEach(0..<10) { index in
    //                HStack {
    //                    Circle()
    //                        .foregroundColor(.gray)
    //                        .frame(width: 10, height: 10)
    //                    Text("№: \(index)")
    //                }
    
    //        VStack {
    //
    ////          ForEach(data.indices) { index in // error -> Non-constant range: not an integer range
    ////                Text("\(index): \(data[index])")
    ////          }
    //        }
    //
    //            }
    //        }
    
//
//    let data: [String] = ["Hi", "Hello", "Hey everyone"]
//    let myString: String = "Hello"
//
//    var body: some View {
//        VStack {
//                        ForEach(data.indices) { index in
//                            Text(data[index])
//                        }
//        }
    }
}

struct ForEachStatements_Previews: PreviewProvider {
    static var previews: some View {
        ForEachStatements()
    }
}
