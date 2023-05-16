//
//  Modifiers.swift
//  Stack
//
//  Created by Надія on 09.11.2022.
//

import SwiftUI

struct CustomModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.mint)
            .padding()
            .padding(.horizontal, 20)
            .background( Capsule() )
    }
}

extension View {
    func customModifier() -> some View {
        self.modifier(CustomModifier())
    }
}

struct Modifiers: View {
    
    var body: some View {
        Text("Hello!")
            .customModifier()
    }
}


struct Modifiers_Previews: PreviewProvider {
    static var previews: some View {
        Modifiers()
    }
}
