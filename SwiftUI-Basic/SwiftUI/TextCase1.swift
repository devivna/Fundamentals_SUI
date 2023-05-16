//
//  TextCase1.swift
//  SwiftUI-Basic
//
//  Created by Students on 17.12.2022.
//

import SwiftUI

/*
 simple modifier: .uppercased() .lowercased() .capitalized
 
 more complex modidfier: .textCase(.lowercase) .textCase(.uppercase)
 
 */

struct TextCase1: View {
    var body: some View {
        VStack {
            Text("case" .uppercased()) // all LARGE
            Text("CASE".lowercased())  // all small
            Text("CaSe".capitalized) // all First Letter are Large
            
            Text("LoWerCase")
            .textCase(.lowercase) // всі малі
            
            Text("UPperCase")
                .textCase(.uppercase) // всі великі

        }
    }
}

struct TextCase1_Previews: PreviewProvider {
    static var previews: some View {
        TextCase1()
    }
}
