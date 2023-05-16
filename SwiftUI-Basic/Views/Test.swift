//
//  Test.swift
//  SwiftUI-Basic
//
//  Created by Надія on 11.12.2022.
//

import SwiftUI

struct Test: View {
   
    @State var title = ""
    @State var imageName = ""
    var body: some View {

        VStack(spacing: 30) {
            Text(title)
            
            Image(imageName)
            
            Button {
                
                let message1 = "You are awesome"
                let message2 = "You are great"

//                if title == message1  {
//                    title = message2
//                    image = "p2"
//                } else {
//                    title = message1
//                    image = "p1"
//                }
                
                title = (title == message1 ? message2 : message1)
                imageName = ( imageName == "p1" ? "p2" : "p1")
                
                
            } label: {
                Text("Press me")
            }
            .buttonStyle(.borderedProminent)

        }
    }
}


struct Test_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Test()
        }
    }
}


