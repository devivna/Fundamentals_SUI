//
//  Animations.swift
//  Stack
//
//  Created by Надія on 09.11.2022.
//

import SwiftUI

struct Animations: View {
    
    private static let font1 = Font.system(size: 20)
    private static let font2 = Font.system(size: 45)
    
    @State private var color = Color.red
    @State private var currentFont = font1
    
    var body: some View {
        VStack {
            Text("Content transition")
                .foregroundColor(color)
                .font(currentFont)
                .contentTransition(.interpolate)
            Spacer()
            Button("Change") {
                withAnimation(Animation.easeInOut(duration: 3.0)) {
                    color = (color == .red) ? .green : .red
                    currentFont = (currentFont == Animations.font1) ? Animations.font2 : Animations.font1
                }
            }
        }
    }
}
    
    //!!! error
    
//        @State var scale: CGFloat = 1 // core graphics
//
//        var body: some View {
//            VStack {
//
//            }
//            Button {
//                scale += 1
//            } label: {
//                Text("Tap me")
//                    .scaleEffect(scale)
//                withAnimation(Animation.linear(duration: 5.0) {
//
//                }
//            }
//}
    
//    @State var isAnimated = false
//
//    var body: some View {
//
//        VStack {
//            Button("Button") {
//                isAnimated.toggle()
//            }
//
//            Spacer()
//
//            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25 )
//                .fill(isAnimated ? .orange : .yellow )
//                .frame(width: isAnimated ? 100 : 200,
//                       height: isAnimated ? 100 : 200)
//                .rotationEffect(Angle.degrees(isAnimated ? 360 : 0))
//                .offset(y: isAnimated ? 300 : 0)
////                .animation(
////                    Animation
////                        .default
////                        .repeatForever())
//
//            Spacer()
//        }
//    }


struct Animations_Previews: PreviewProvider {
    static var previews: some View {
        Animations()
    }
}
