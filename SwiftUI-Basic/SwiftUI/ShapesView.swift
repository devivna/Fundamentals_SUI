//
//  ShapesView.swift
//  SwiftUI-Basic
//
//  Created by Надія on 05.12.2022.
//

import SwiftUI

/*
 
 Shapes: Circle(), Rectangle(), RoundedRectangle(), Capsule()
 
 RoundedRectangle(cornerSize:), RoundedRectangle(cornerRadious:)
 
 */


struct ShapesView: View {
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                // заливка кольором
                //                Circle()
                //                    // .fill(Color.mint) // or
                //                    // .foregroundColor(Color.mint)
                //
                //                    .fill(Color.orange.opacity(0.4))
                
                
                // лінія фігури
                //                Circle()
                //                    .stroke() // просто чорна (базова) лінія
                
                //лінія фігури + колір
                //               Circle()
                //                    .stroke(Color.mint)
                
                
                // лінія фігури + колір + ширина лінії
                //                Circle()
                //                    .stroke(.mint, lineWidth: 10)
                
                
                // лінія фігури + колір + ширина лінії + lineCap
                //                Circle() // butt
                //                // .stroke(Color.mint, style: StrokeStyle(lineWidth: 20, lineCap: .butt))
                //                Circle() // round
                //                // .stroke(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .round)
                //                Circle() // square
                //                // .stroke(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .square)
                
                // лінія фігури + ширина лінії
                //                Circle()
                //                    .stroke(lineWidth: 10)
                
                // лінія фігури + колір + ширина лінії + lineCap + dash
//                Circle()
//                    .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
                //.stroke(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
                //.stroke(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
                
                
                // Creates a new stroke style from the given components.
                // init(lineWidth: CGFloat = 1, lineCap: CGLineCap = .butt, lineJoin: CGLineJoin = .miter, miterLimit: CGFloat = 10, dash: [CGFloat] = [CGFloat](), dashPhase: CGFloat = 0)
                
                //                Parameters
                //
                //                lineWidth - The width of the segment.
                //                lineCap - The endpoint style of a segment.
                //                lineJoin - The join type of a segment.
                //                miterLimit - The threshold used to determine whether to use a bevel instead of a miter at a join.
                //                dash - The lengths of painted and unpainted segments used to make a dashed line.
                //                dashPhase - How far into the dash pattern the line starts.
                
                
                    // Circle()
                //    .trim(from: 0.0, to: 1.0) // entire circle
                //.trim(from: 0.5, to: 1.0) // верхня половина круга
                //.trim(from: 0.2, to: 1.0) // скошено нижній лівий кут круга
                
                //       0.75
                // 0,5 --------- 0/1
                //       0.25
                
                
                // -- trim + stroke
                
//                Circle()
//                    .trim(from: 0.6, to: 0.8)
//                    .stroke(Color.mint, lineWidth: 13)
                // U
                
                
                
                // _______________ ELLIPSE
                
//                Ellipse()
//                    .frame(width: 200, height: 100) // - горизонтальний овал
                 
                // + заливка
//                Ellipse()
//                    .frame(width: 200, height: 100)
//                    .foregroundColor(.orange) // fill не пропонує
                
                // + trim + stroke
                
                // ________________ Capsule
                
                //Capsule(style: .circular) // більш кругла (кут в капсули більш круглий)
                //Capsule(style: .continuous) // більш прямокутна з круглими краями (кут більш квадратний)
                
//                Capsule(style: .continuous)
//                    .frame(width: 200, height: 100)
                
                    //.fill(.orange)
                    //.foregroundColor(.orange)
                
                    // error - .stroke(Color.orange, lineWidth: 20)
                    
                
                // ________________ Rectangle
                
//                Rectangle()
                
                // ________________ Rounded Rectangle
                
                //RoundedRectangle(cornerSize: 25)
                //RoundedRectangle(cornerRadius: 50) -> like Capsule
                 //   .frame(width: 200, height: 100)
                
                
                //RoundedRectangle(cornerRadius: 10) -> rectangle with very small corner
                 //   .frame(width: 300, height: 200)
                
                
                // __ Rectangle + trim
//                RoundedRectangle(cornerRadius: 10) // -> rectangle with very small corner
//                   .frame(width: 300, height: 200)
                // ->error   .trim(from: 0.4, to: 1)

//                Rectangle()
//                    .frame(width: 300, height: 200)
                // ->error   .trim(from: 0.4, to: 1)
                
                
                
            }
        }
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
