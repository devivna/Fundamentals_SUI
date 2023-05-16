//
//  ConditionalStatements.swift
//  Stack
//
//  Created by Надія on 08.11.2022.
//

import SwiftUI

struct ConditionalStatements: View {
    
    @State var showCircle = false
    @State var showRect = false

    var body: some View {

        VStack(spacing: 30) {

            Button {
                showCircle.toggle()
            } label: {
                Text("Show circle: \(showCircle.description)")
                    .padding()
                    .background(.orange)
                    .cornerRadius(10)
            }

            Button {
                showRect.toggle()
            } label: {
                Text("Show rectangle: \(showRect.description)")
                    .padding()
                    .background(.orange)
                    .cornerRadius(10)
            }

            if showCircle && !showRect {
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.red)
            } else if !showCircle && showRect {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.red)
            } else if showCircle && showRect {
                Capsule(style: .continuous)
                    .frame(width: 100, height: 60)
                    .foregroundColor(.red)
            }

//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//
//            }
//
//            if showRect {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//
//            }
//
//            if showCircle && showRect {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 100, height: 100)
//            }

        }
        .accentColor(.black)
    }
    
    /*
     
     @State var title = ""
     var body: some View {

         VStack(spacing: 30) {
             Text(title)
             
             Button {
                 
                 let message1 = "You are awesome"
                 let message2 = "You are great"
                 
                 if title == message1  {
                     title = message2
                 } else {
                     title = message1
                 }
             } label: {
                 Text("Press me")
             }
             .buttonStyle(.borderedProminent)

         }
     }

     
     
     */
}

struct ConditionalStatements_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalStatements()
    }
}
