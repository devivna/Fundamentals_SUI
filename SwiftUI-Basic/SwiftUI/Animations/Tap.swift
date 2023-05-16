//
//  Tap.swift
//  Stack
//
//  Created by Надія on 04.11.2022.
//

import SwiftUI

struct Tap: View {
    
    @State var isSelected = false
    var body: some View {
        
        

        VStack(spacing: 20) {
            
            
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 200, height: 150)
                .foregroundColor( isSelected ? .brown.opacity(0.7) : .teal.opacity(0.6) )
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Capsule())
                    .padding(.horizontal, 20)
            }
            
            Text("Tap Gesture")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.orange)
                .clipShape(Capsule())
                .padding(.horizontal, 20)
            
            // 1 tap gesture
//                .onTapGesture {
//                    isSelected.toggle()
//                }

            
            // several tap gesture to click on the "button"
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            
               
            
            
        }
        //        Image(systemName: "suit.heart")
//            .gesture{
//                LongPressGesture(minimumDuration: 2)
//                    .onEnded { _ in
//                        print("Pressed")
//                    }
//            }
    

    }
    
    }

struct Tap_Previews: PreviewProvider {
    static var previews: some View {
        Tap()
    }
}
