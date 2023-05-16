//
//  Transitions1.swift
//  SwiftUI-Basic
//
//  Created by Надія on 13.12.2022.
//

import SwiftUI

struct Transitions1: View {
    
    @State private var showRect = false
    
    var body: some View {
        VStack {
            
            Button {
                showRect.toggle()
            } label: {
                Text("Button")
            }

            // -- simple animation
            
//            RoundedRectangle(cornerRadius: 30)
//                .frame(height: UIScreen.main.bounds.height * 0.5) // прямокутник на половину екрану
//                .foregroundColor(showRect ? .brown.opacity(1.0) : .brown.opacity(0.0) )
//                .animation(.easeInOut, value: 1)

            
            // --  transition
            
            Spacer()
            }
            if showRect {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 300, height: 200)
                .foregroundColor(.brown)
            
                //.transition(.move(edge: .bottom))
                //.transition(AnyTransition.slide.animation(.spring()))
                //.transition(AnyTransition.scale.animation(.easeInOut))
                .transition(.asymmetric(insertion: .move(edge: .leading),
                                        removal: .move(edge: .trailing)))
            
            //.animation(.easeInOut, value: 1)
               // .animation(.spring(), value: 10)
        
        }
    }
}

struct Transitions1_Previews: PreviewProvider {
    static var previews: some View {
        Transitions1()
    }
}
