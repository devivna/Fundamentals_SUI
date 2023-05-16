//
//  Button1.swift
//  Stack
//
//  Created by Надія on 08.11.2022.
//

import SwiftUI

/*
 
 
 */


struct Button1: View {
    
//    // simple button + change text
//
//    @State var title = "Text is gonna to change"
//
//    var body: some View {
//
//        VStack {
//
//            Text(title)
//
//            Button {
//                title = "Button was presed"
//            } label: {
//                Text("Press me")
//            }
//        }
   
    @State var title = "Text is gonna to change"
    
    var body: some View {

        VStack(spacing: 20) {

            Text(title)
                .font(.headline)
                .fontWeight(.medium)
                .foregroundColor(Color(hue: 0.044, saturation: 0.881, brightness: 0.964, opacity: 0.81))
                .lineLimit(1)
            
            Button {
                title = "Button 1 was pressed"
            } label: {
                Text("Discard all changes")
                    .font(.caption)
                    .accentColor(.orange) // change color of link
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.white
                            .cornerRadius(20)
                            .shadow(radius: 10)
                    )
            }
            
            Button {
                title = "Button 2 was pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.largeTitle)
                    .accentColor(.green)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.white
                            .cornerRadius(20)
                            .shadow(radius: 10)
                    )
            }
            
            Button {
                title = "Button 3 was pressed"
            } label: {
               Circle()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                        
                    }
                
                    
            }
            
            Button {
                title = "Button 4 was pressed"
            } label: {
                Text("Quit".uppercased())
                    .font(.title2)
                    .fontWeight(.light)
                    .foregroundColor(.teal)
                    .padding(10)
                    .padding(.horizontal, 15)
                    .background(
                        Capsule()
                            .stroke(Color.gray.opacity(0.7), lineWidth: 2)
                            .shadow(radius: 1)
                    )
            }
            
            
            Button {
                self.title = "The button was pressed"
            } label: {
                Text("Finish" .uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.black)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                    Capsule()
                       .stroke(.gray, lineWidth: 1.5)
                    )

            }
            
        }
    }
}


struct Button1_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Button1()
                //.previewLayout(.sizeThatFits)
            Button1()
                .preferredColorScheme(.dark)
                .environment(\.sizeCategory, .small)
        }
    }
}
