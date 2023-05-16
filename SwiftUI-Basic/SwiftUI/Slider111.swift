//
//  Slider111.swift
//  SwiftUI-Basic
//
//  Created by Надія on 11.12.2022.
//

import SwiftUI

struct Slider111: View {
    
    @State var sliderValue1: Float = 0.1 // Float or Double
    @State var sliderValue2: Float = 2
    @State var sliderValue3: Float = 3
    @State var sliderValue4: Float = 4
    @State var sliderValue5: Float = 5
    
    @State var colorValue = Color.black
    
    var body: some View {
        
        VStack {
            
            Text("\(sliderValue1)")
            Slider(value: $sliderValue1)
            
            Text("\(sliderValue2.description)")
            Slider(value: $sliderValue2, in: 1...5) // from 1 to 5 (Float)

            Text(String(format: "%.0f", sliderValue3)) // turn Float to Int
            
            //Text("\(sliderValue3.description)")
            Slider(value: $sliderValue3,
                   in: 1...5,
                   step: 1
            ) // from 1 to 5 (Int)
            
            Text("\(sliderValue4.description)")
            Slider(value: $sliderValue4,
                   in: 1...5,
                   step: 1,
                   minimumValueLabel: Text("1 y."),
                   maximumValueLabel: Text("5 y."),
                   label: {
                Text("-")
            }) //  ?
            
            // --- change something after using slider
            
            Text("\(sliderValue5.description)")
                .foregroundColor(colorValue)
            Slider(value: $sliderValue5,
                   in: 1...5, step: 1) { _ in
                colorValue = .green
            }
        }
        .accentColor(.gray)
        
    }
}

struct Slider111_Previews: PreviewProvider {
    static var previews: some View {
        Slider111()
    }
}
