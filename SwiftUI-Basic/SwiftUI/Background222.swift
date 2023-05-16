//
//  Background222.swift
//  SwiftUI-Basic
//
//  Created by Students on 15.12.2022.
//

import SwiftUI

/*
 ultraThickMaterial: A mostly opaque material.
 thickMaterial: A material that’s more opaque than translucent.
 regularMaterial:  A material that’s somewhat translucent.
 thinMaterial: A material that’s more translucent than opaque.
-> ultraThinMaterial: A mostly translucent material.
 */


struct Background222: View {
    var body: some View {
        
        
        VStack {
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            //.background (Color.white.opacity(0.3))
            //.background(.thinMaterial) // напівпрозорий вигляд
            //.background(.ultraThinMaterial) // дуже прозовий вигляд
            .background(.thickMaterial) // більше фон дод View ніж основного
            .cornerRadius(35)
            
        }
        .ignoresSafeArea()
        .background(
            Color.brown.opacity(0.8)
        )
    }
}

struct Background222_Previews: PreviewProvider {
    static var previews: some View {
        Background222()
    }
}
