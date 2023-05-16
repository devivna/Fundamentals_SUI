//
//  State.swift
//  Stack
//
//  Created by Надія on 03.11.2022.
//

import SwiftUI

struct StatePW: View {

    @State var process = "Nothing"
    @State var count = 0
    @State var backgroungColor = Color.gray.opacity(0.2)
    
    var body: some View {
        
        ZStack {
            backgroungColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                Text(process)
                
                Button {
                    
                } label: {
                    Text("Count: \(count)")
                        .font(.headline)
                        .underline()
                }
                
                HStack(spacing: 20) {
                    
                    Button {
                        count -= 1
                        backgroungColor = .red.opacity(0.3)
                        process = "Subtracting"
                    } label: {
                        Image(systemName: "minus")
                    }
                    
                    Button {
                        count += 1
                        backgroungColor = .green.opacity(0.3)
                        process = "Addition"
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .accentColor(.black)
            .font(.largeTitle)
        }
    }
    
    
    
//    @State private var age = 18
//
//    var body: some View {
//
//        VStack {
//            Stepper("Choose your age", onIncrement: {
//                self.age += 1
//                print("Adding to age")
//            }, onDecrement: {
//                self.age += 1
//                print("Subtracting from age")
//            })
//            Text("Your age is \(age)")
//        }
        
        
        
        
//        VStack {
//            Picker(selection: $selectedColor,
//                   label: Text("Choose a color")) {
//                ForEach(0..<colors.count) {
//                    Text(self.colors[$0])
//                }
//            }
//            Text("You selected: \(colors[selectedColor])")
//        }
        
        //        VStack {
//            Slider(value: $celcius, in: -100...100, step: 0.1)
//            Text("\(celcius) Celsius is \(celcius * 9/5 + 32) Fahrenheit")
//        }
        
        
//        VStack {
//            TextField("Enter your name", text: $name)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//
//            SecureField("Enter your password", text: $password)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//        }
    
        
        
//        VStack {
//            Button(action: {
//                self.showDetail.toggle()
//            }) {
//                Text("Show details")
//            } .padding()
//                .background(.yellow)
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//
//            if showDetail {
//                Text("Some text here...")
//            }
//        }
        
        
        
//        VStack {
//            Toggle(isOn: $showText) {
//                Text("Show text!")
//            } .padding()
//
//            if showText {
//                Text("I'm showing some text")
//            }
//        }
//    }
}

struct StatePW_Previews: PreviewProvider {
    static var previews: some View {
        StatePW()
    }
}
