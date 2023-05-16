//
//  Icons.swift
//  Stack
//
//  Created by Надія on 02.11.2022.
//

import SwiftUI

/*
 
 - set size: .font(.largeTitle)  or .font(.system(size: 20))
 - fill: .foreground(.red)
 - .scaleToFit (в межах) or .aspectRatio(contentMode: .fit)
 - .scaleToFill (за межами) or .aspectRatio(contentMode: .fill)
 - .clipped() - відразати те, що за межами рамки
 
 Multicolor Image:  1 - renderingMode(.original) 2 - .foreground(.gray)
        one color => foregroundColor
        color by default => renderingMode(.original)
        default + color => = renderingMode.original + foregroundColor

 
 */


struct Icons: View {
    var body: some View {
//        Image(systemName: "heart")
        
        // ---- set size
//        Image(systemName: "heart")
//            .font(.largeTitle) // update uautomatically
//            //.font(.system(size: 20))
        
        // ---- fill
//        VStack {
//            Image(systemName: "heart.fill")
//                .foregroundColor(.red)
//            Image(systemName: "heart")
//                .foregroundColor(.red)
//        }
        
        // ---- frame + resize
        
//        VStack {
//
//            //  в рамці + видозміна картинки
//            Image(systemName: "heart.fill")
//                .resizable() // 1 - розшир до максимальних розмірів
//                .scaledToFill() // 2 - fill -> трішки більше за рамки
//                .frame(width: 100, height: 100) // 3 рамка
//                .foregroundColor(.teal)
//
//                .border(Color(white: 0.75))
//
//            // трішки поза межами рамки + без видозміни картинки
//            Image(systemName: "heart.fill")
//                .resizable() // 1 - розшир до максимальних розмірів
//                .scaledToFit() // 2 - fit ->  в рамці + відрізати якшо треба
//                .frame(width: 100, height: 100) // 3 рамка
//                .foregroundColor(.teal)
//
//                .border(Color(white: 0.75))
//
//            // трішки поза межами рамки + без видозміни картинки + обрізано те, що не треба
//            Image(systemName: "heart.fill")
//                .resizable() // 1 - розшир до максимальних розмірів
//                .scaledToFill() // 2 - fit ->  в рамці + відрізати якшо треба
//                .frame(width: 100, height: 100) // 3 рамка
//                .foregroundColor(.teal)
//                .clipped()
//
//                .border(Color(white: 0.75))
//
//        }
        
        
        // multi Color Image
        
        VStack(spacing: 15) {
            
            // custom color => foregroundColor
            Image(systemName: "doc.fill.badge.plus")
//                .resizable()
//                .scaledToFill()
//                .frame(width: 150, height: 150)
                .foregroundColor(.teal)
            
            // color by default => renderingMode.original
            Image(systemName: "doc.fill.badge.plus")
                .renderingMode(.original)
//                .resizable()
//                .scaledToFill()
//                .frame(width: 150, height: 150)
            
            // part by default + custom color => = renderingMode.original + foregroundColor
            Image(systemName: "doc.fill.badge.plus")
                .renderingMode(.original)
//                .resizable()
//                .scaledToFill()
//                .frame(width: 150, height: 150)
                .foregroundColor(.teal)
        
            
        }
        
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons()
    }
}
