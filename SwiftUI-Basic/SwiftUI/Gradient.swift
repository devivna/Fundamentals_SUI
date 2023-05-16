//
//  Gradient.swift
//  Stack
//
//  Created by Надія on 02.11.2022.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        
        ScrollView {
            
            // -------- LINEAR Gradient
//            HStack(spacing: 1) {
//                RoundedRectangle(cornerRadius: 15)
//                    .frame(width: 180, height: 180)
//                    .foregroundStyle(
//                        LinearGradient(
//                            gradient: Gradient(colors: [.teal, .yellow]),
//                            startPoint: .bottomTrailing,
//                            endPoint: .topLeading)
//                    )
//                RoundedRectangle(cornerRadius: 15)
//                    .frame(width: 180, height: 180)
//                    .foregroundStyle(
//                        LinearGradient(
//                            colors: [.yellow, .teal],
//                            startPoint: .topTrailing,
//                            endPoint: .bottomLeading)
//                    )
//            }
//
//
//            HStack(spacing: 1) {
//                RoundedRectangle(cornerRadius: 15)
//                    .frame(width: 180, height: 180)
//                    .foregroundStyle(
//                        LinearGradient(
//                            colors: [.yellow, .teal],
//                            startPoint: .bottomLeading,
//                            endPoint: .topTrailing)
//                    )
//                RoundedRectangle(cornerRadius: 15)
//                    .frame(width: 180, height: 180)
//                    .foregroundStyle(
//                        LinearGradient(colors: [.yellow, .teal], startPoint: .bottomTrailing, endPoint: .topLeading)
//                    )
//            }
            
            // -------- RADIAL Gradient
            
            
            HStack(spacing: 1) {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 180, height: 180)
                    .foregroundStyle(
                        RadialGradient(gradient: Gradient(
                            colors: [Color("MyPurple"),Color("MyTeal")]),
                                       center: .bottomTrailing,
                                       startRadius: 100.0,
                                       endRadius: 200.0)
                    )
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 180, height: 180)
                    .foregroundStyle(
                        RadialGradient(gradient: Gradient(
                            colors: [Color("MyPurple"),Color("MyTeal")]),
                                       center: .bottomLeading,
                                       startRadius: 10.0,
                                       endRadius: 100.0)
                        )
            }
            HStack(spacing: 1) {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 180, height: 180)
                    .foregroundStyle(
                        RadialGradient(gradient: Gradient(
                            colors: [Color("MyPurple"),Color("MyTeal")]),
                                       center: .topTrailing,
                                       startRadius: 130.0,
                                       endRadius: 180.0)
                    )
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 180, height: 180)
                    .foregroundStyle(
                        RadialGradient(gradient: Gradient(
                            colors: [Color("MyPurple"),Color("MyTeal")]),
                                       center: .topLeading,
                                       startRadius: 180.0,
                                       endRadius: 200.0)
                        )

            }
            HStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 180, height: 180)
                    .foregroundStyle(
                        RadialGradient(gradient: Gradient(
                            colors: [Color("MyPurple"),Color("MyTeal")]),
                                       center: .bottom,
                                       startRadius: 30.0,
                                       endRadius: 150.0)
                        )
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 180, height: 180)
                    .foregroundStyle(
                        RadialGradient(gradient: Gradient(
                            colors: [Color("MyPurple"),Color("MyTeal")]),
                                       center: .bottom,
                                       startRadius: 10.0,
                                       endRadius: 200.0)
                        )

            }
            HStack {
//                RoundedRectangle(cornerRadius: 15)
//                    .frame(width: 180, height: 180)
//                    .foregroundColor(
//                       Color("MyPurple")
//                        )

                // ! - background + radial gradient
                Rectangle()
                    .frame(width: 400, height: 800)
                    .foregroundStyle(
                        RadialGradient(
                            gradient: Gradient(colors: [Color("Beige"), .white]),
                            center: .bottom,
                            startRadius: 80,
                            endRadius: 600)
                    )
            }

            // -------- ANGULAR gradient
            
//            VStack {
//                // ! - background + radial gradient
//                Rectangle()
//                    .frame(width: 400, height: 200)
//                    .foregroundStyle(
//                        AngularGradient(
//                            gradient: Gradient(colors: [Color("Beige"), .white]), center: .bottom,
//                            angle: .degrees(40))
//                    )
//                Rectangle()
//                    .frame(width: 400, height: 200)
//                    .foregroundStyle(
//                        AngularGradient(
//                            gradient: Gradient(colors: [Color("Beige"), .white]), center: .bottom,
//                            angle: .degrees(80))
//                    )
//                Rectangle()
//                    .frame(width: 400, height: 200)
//                    .foregroundStyle(
//                        AngularGradient(
//                            gradient: Gradient(colors: [Color("Beige"), .white]), center: .bottom,
//                            angle: .degrees(120))
//                    )
//            }



        }
        
        
        
        
//        let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple])
//        let gradient = AngularGradient(gradient: colors, center: .center)
//        return Circle()
//            .strokeBorder(gradient, lineWidth: 10)
//            .frame(height: 100)
    }
}

struct Gradient_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
