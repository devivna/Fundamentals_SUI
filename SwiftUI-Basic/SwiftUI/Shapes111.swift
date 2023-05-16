//
//  Shapes111.swift
//  SwiftUI-Basic
//
//  Created by Students on 17.12.2022.
//

import SwiftUI

/*
 
 Shapes: Circle(), Rectangle(), RoundedRectangle(), Capsule()
 
 CIRCLE
 
 - .fill(.red) = .foregroundColor(.red) - заливка кольором
 
 - .stroke() + .stroke(Color.mint) + .stroke(lineWidth: 10) + .stroke(.mint, lineWidth: 10) - лінія фігури : Circle()
 
    .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
    init(lineWidth: CGFloat = 1, lineCap: CGLineCap = .butt, lineJoin: CGLineJoin = .miter, miterLimit: CGFloat = 10, dash: [CGFloat] = [CGFloat](), dashPhase: CGFloat = 0)
 
    lineCap: .butt, .round, square
    dash - The lengths of painted and unpainted segments used to make a dashed line.
    dashPhase - How far into the dash pattern the line starts.
 
 - .trim(from: 0.0, to: 1.0) -> .trim(from: 0.2, to: 1.0) // скошено нижній лівий кут круга
           0.75
    0.5 --------- 0/1
           0.25

    .trim + stroke -> Character "C"
 
 ELLIPSE:
 
 - foreground(NOT fill) + frame + trim + stroke
 
 CAPSULE:
 
 - style : Capsule(style: .circular), Capsule(style: .continuous)
 - foreground(NOT fill) + frame - (NOT) stroke
 
 
 RECTANGLE:
 
 RoundedRECTANGLE
 - style: RoundedRectangle(cornerSize: ) RoundedRectangle(cornerRadius: )
 - frame
 -  1 - trim 2 - frame (0.4 - left bottom angle)
 
 */

struct Shapes111: View {
    var body: some View {
        ScrollView {
            
            VStack(spacing: 50) {
                
                
                //  --- лінія фігури + колір + ширина лінії + lineCap + dash
                Circle() // butt
                    .stroke(Color.mint, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [40] ))
                    .frame(width: 200, height: 200)
                
                Circle() // round
                    .stroke(Color.red, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [35] ))
                    .frame(width: 200, height: 200)
                
                Circle() // square
                    .stroke(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .square, dash: [40] ))
                    .frame(width: 200, height: 200)
            }
            .padding()
        }
    }
}

struct Shapes111_Previews: PreviewProvider {
    static var previews: some View {
        Shapes111()
    }
}
