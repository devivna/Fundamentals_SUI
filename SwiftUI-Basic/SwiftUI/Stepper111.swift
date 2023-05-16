//
//  Stepper111.swift
//  SwiftUI-Basic
//
//  Created by Надія on 10.12.2022.
//

import SwiftUI

/*
 Stepper(value: binding(Int) + label)
 Stepper(title + onIncrement (var += 10) + onDecrement( var -= 10) )
 */

struct Stepper111: View {
    
//    @State var stepperValue: Int = 10
//    @State var delta: CGFloat = 0
//
//    var body: some View {
//
//        VStack {
//            Stepper("Choose your size: \(stepperValue)", value: $stepperValue)
//                 .padding(.horizontal, 20)
//
//
//            Stepper("Choose your size:") {
//                delta += 20
//            } onDecrement: {
//                delta -= 20
//            }
//
//            Rectangle()
//                .frame(width: delta + 100, height: delta + 100)
//                .foregroundColor(.orange)
//                .cornerRadius(10)
//
//        }
      
    @State var stepper = 18
    @State var isOn = true
    
    var body: some View {
        VStack {
            Stepper("Enter your age: \(stepper)", value: $stepper)
            
            Stepper("Choose your size: \(stepper)") {
                stepper += 1
                print("+")
            } onDecrement: {
                stepper -= 1
                print("-")
            }
        }
    }
}

struct Stepper111_Previews: PreviewProvider {
    static var previews: some View {
        Stepper111()
    }
}
