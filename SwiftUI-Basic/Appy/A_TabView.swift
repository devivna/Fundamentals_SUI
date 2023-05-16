//
//  TabView.swift
//  Stack
//
//  Created by Надія on 04.11.2022.
//

import SwiftUI

struct A_TabView: View {
    
    @State var selected = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            
            ZStack {
                
                HStack {
                    
                    Button {
                        selected = 0
                    } label: {
                        Image(systemName: "house.circle")
                    }.foregroundColor( selected == 0 ? .black : .gray)
                    
                    Spacer(minLength: 12)
                    
                    Button {
                        selected = 1
                    } label: {
                        Image(systemName: "pencil.tip.crop.circle")
                    }.foregroundColor( selected == 1 ? .black : .gray)
                    
                    Spacer()
                        .frame(width: 120)
                    
                    Button {
                        selected = 2
                    } label: {
                        Image(systemName: "person.circle")
                    }.foregroundColor( selected == 2 ? .black : .gray)
                    
                    Spacer(minLength: 12)
                    
                    Button {
                        selected = 3
                    } label: {
                        Image(systemName: "trash.circle")
                    }.foregroundColor( selected == 3 ? .black : .gray)
                    
                }
                .padding()
                .padding(.horizontal, 22)
                .background(CurvedShape())
                
                Button {
                    //
                } label: {
                    Image(systemName: "heart")
                        .padding(10)
                        .background(Color.yellow)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .offset(y: -28)
                                
                }

                
            }
        }
        .background(.orange)
        .contrast(0.8)
        
    }
}

struct CurvedShape: View {
    
    var body: some View {
        Path { path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 55))
            
            path.addArc(center: CGPoint(
                x: UIScreen.main.bounds.width / 2 , y: 55),
                        radius: 21,
                        startAngle: .zero,
                        endAngle: .init(degrees: 180),
                        clockwise: true)
            path.addLine(to: CGPoint(x: 0, y: 55))
        } .fill(Color.white)
            .rotationEffect(Angle(degrees: 180))
        
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        A_TabView()
    }
}
