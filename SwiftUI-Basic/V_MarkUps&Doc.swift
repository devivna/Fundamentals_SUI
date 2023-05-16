//
//  V_MarkUps&Doc.swift
//  SwiftUI-Basic
//
//  Created by Надія on 11.12.2022.
//

import SwiftUI

struct V_MarkUps_Doc: View {
    
    var body: some View {
        
        //Text("Hello, World!")
        
        // MARK: task #1 / func's name
        
        // fold code -> option + command + left/right
        
//        ScrollView {
//
//        } // END: ScrollView
        
        /*
         Multiline comments
         */
        
        
        // for diferent part of code use private var name: some View -> name
        
        /*
         
         ADD Documentation
         
         /// короткий опис
         /// - Parameters: опис параметрів функціїї
         /// - Returns: опис того, що повертає функція
        
         */
        
        
        
        
        VStack {
            Text(hello(name: "Nadia"))
                 }
            
            
    }
    
    // see Formatting Quick Help
    // ? Add to Quick Help documentation comment
    
    ///  Short description about your func
    ///         - parameters:
    ///             - name: Person's name
    
    func hello(name: String) -> String {
        "Hello, \(name)"
    }
}

struct V_MarkUps_Doc_Previews: PreviewProvider {
    static var previews: some View {
        V_MarkUps_Doc()
    }
}
