//
//  EnvironmentObject1.swift
//  Stack
//
//  Created by Надія on 09.11.2022.
//

import SwiftUI

/*
 Struct are imutable = fixed value 
 
 
 */


struct EnvironmentObject1: View {
    
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        VStack {
            Text("Your score is \(settings.score)")
            Button {
                settings.score += 1
            } label: {
                Text("Increase score")
            }
        }
    }
}


struct EnvironmentObject1_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObject1()
    }
}
