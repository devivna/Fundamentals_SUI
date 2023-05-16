//
//  AppStorage1.swift
//  SwiftUI-Basic
//
//  Created by Надія on 13.12.2022.
//

import SwiftUI

/*
 AppStorage - storage for small pieces of data (save even when user closes the app)
 
 
 // binding optinal value using nill coalesing #1
//        Text(name ?? "add your name")
 
 // binding optinal value using Force-unwrap #2
//        if let nameForce = name {
//            Text(nameForce)

 
 */

struct AppStorage1: View {
    
    @AppStorage("name") var savedName: String?
    @State var isName: String = ""
    
    var body: some View {
        
        
        VStack {
            TextField("Enter your name", text: $isName)
                .border(.green)
         
            Button {
                savedName = isName
            } label: {
                Text("Save")
                    .font(.largeTitle)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .clipShape(Capsule())
                    .shadow(radius: 10)
            }
            Text("Hello, \(isName)")
        }
    }
}

struct AppStorage1_Previews: PreviewProvider {
    static var previews: some View {
        AppStorage1()
    }
}
