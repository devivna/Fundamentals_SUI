//
//  Background.swift
//  Stack
//
//  Created by Надія on 02.11.2022.
//

import SwiftUI

/*
 
 Text -> background (Shape) -> background (Shape)
 ZStack -> background (Shape) -> background (Shape) -> Text
 Capsule -> overlay (Shape) -> overlay (Text)
 Capsule -> overlay (Text) -> background (Shape)
 Image -> background (Circle) -> C: overlay (Shape) - > S: overlayText
 */

struct Background: View {
    var body: some View {
        
        //text in capsule
        
        // backgroung
        
        VStack(spacing: 10) {
            Text("Hello")
                .bold()
                .frame(width: 180, height: 80)
                .background(
                    Capsule(style: .continuous)
                    .foregroundColor(.orange)
            )
            Text("Hello")
                .bold()
                .frame(width: 180, height: 80)
                .background(
                    Capsule(style: .continuous)
                        .foregroundStyle(
                        LinearGradient(
                            gradient: Gradient(colors: [.orange, .red]),
                            startPoint: .leading,
                            endPoint: .trailing)
                        )
            )
            
            Text("Hello")
                .bold()
                .frame(width: 160, height: 70)
                .background(
                    Capsule(style: .continuous)
                        .foregroundStyle(
                            LinearGradient(
                                gradient: Gradient(colors: [.orange, .red]),
                                startPoint: .leading,
                                endPoint: .trailing)
                        ))
                .frame(width: 180, height: 80)
                .background(
                    Capsule(style: .continuous)
                        .foregroundColor(.green)
                    )
            
            // ----- ZSTACK
            
            ZStack {
                Capsule(style: .continuous)
                    .frame(width: 180, height: 80)
                    .foregroundColor(.green)
                Capsule(style: .continuous)
                    .frame(width: 160, height: 70)
                    .foregroundColor(.orange)
                Text("Hello")
            }
            
            ZStack {
                Capsule(style: .continuous)
                    .frame(width: 180, height: 80)
                    .foregroundStyle(LinearGradient(
                        colors: [.red, .orange],
                        startPoint: .leading, endPoint: .trailing))
                Capsule(style: .continuous)
                    .frame(width: 160, height: 70)
                    .foregroundStyle(LinearGradient(
                        colors: [.red, .orange],
                        startPoint: .trailing, endPoint: .leading))
                Text("Hello")
            }
            
            // ---- OVERLAY - зробити зверху ще один слой
            
            Capsule(style: .continuous)
                .frame(width: 180, height: 80)
                .foregroundStyle(LinearGradient(
                    colors: [.red, .orange],
                    startPoint: .leading, endPoint: .trailing))
                .overlay(
                    Capsule(style: .continuous)
                        .frame(width: 160, height: 70)
                        .foregroundStyle(LinearGradient(
                            colors: [.red, .orange],
                            startPoint: .trailing, endPoint: .leading))
                )
                .overlay(
                    Text("Hello")
                )
            
            // ---- OVERLAY + background
            
//            Capsule(style: .continuous)
//                .frame(width: 160, height: 70)
//                .foregroundStyle(
//                    LinearGradient(
//                        colors: [.orange,.red],
//                        startPoint: .leading,
//                        endPoint: .trailing)
//                )
//                .overlay(
//                Text("Hello")
//                    ,alignment: .bottomTrailing
//                )
//                .background(
//                    Capsule(style: .continuous)
//                        .frame(width: 180, height: 80)
//                        .foregroundStyle(
//                            LinearGradient(colors: [.red, .orange],
//                                           startPoint: .leading, endPoint: .trailing)
//                        )
//                    ,alignment: .bottomLeading
//                )
            
            Image(systemName: "heart")
                .resizable()
                .frame(width:30, height: 30)
                .foregroundColor(.white)
                .background(
                Circle()
                    .frame(width: 60, height: 60)
                    .foregroundStyle(
                        LinearGradient(colors: [.red, .orange],
                                       startPoint: .topLeading,
                                       endPoint: .topTrailing)
                    )
                    .shadow(color: .red.opacity(0.8), radius: 3)
                
                    .overlay(
                    Circle()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.blue)
                    
                        .overlay(
                        Text("1")
                        
                            .font(.caption)
                            .bold()
                            .padding(3)
                            .foregroundColor(.white)
                        )
                    
                        .shadow(color: .red.opacity(0.8), radius: 3)
                    
                    ,alignment: .topTrailing
                    )
                )
            
            
            
        }
        
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
