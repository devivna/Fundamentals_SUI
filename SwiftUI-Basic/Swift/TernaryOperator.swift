//
//  TernaryOperator.swift
//  Stack
//
//  Created by Надія on 09.11.2022.
//

import SwiftUI

struct TernaryOperator: View {
    
    @State private var title = ""
    @State private var imageName = ""

    var body: some View {
        
        VStack(spacing: 30) {
            Text(title)
            Image(imageName)
            
            Button {
                
                let message1 = "You are awesome"
                let message2 = "You are great"
                
                title = (title == message1 ? message2 : message1)
                imageName = ( imageName == "p1" ? "p2" : "p1")

            } label: {
                Text("Press me")
            }
            .buttonStyle(.borderedProminent)
            
        }
    }
    
    /*
     
     
     @State var state = false
     
     var body: some View {
     
     VStack {
     
     Text(state ? "Hi" : "Hello")
     
     Button {
     state.toggle()
     } label: {
     Rectangle()
     .frame(width: state ? 100 : 80, height:  state ? 100 : 80)
     .foregroundColor(state ? .orange : .red)
     .cornerRadius(state ? 20 : 5)
     
     }
     }
     }
     
     */
}

struct TernaryOperator_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperator()
    }
}
