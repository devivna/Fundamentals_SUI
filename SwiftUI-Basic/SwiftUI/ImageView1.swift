//
//  Image.swift
//  Stack
//
//  Created by Надія on 04.11.2022.
//

import SwiftUI

/*
 
 .clipped() or use .cornerRadius()
 .clipShape(Circle())
  
 .resizedToFill(width: CGFloat, height: CGFloat) = resizable() + aspectRatio(.fill) + frame(width + height)
 
 
 image with tranparent background -> .renderingMode(.templete) + foreground()
 
 .imageScale(.large) -> .large .medium .small
 
 */

    

struct ImageView1: View {
    var body: some View {
        
        ScrollView {
            HStack {
                Image(systemName: "house")
                    .imageScale(.large)
                Text("House")
                    .font(.largeTitle)
            }
            
            Image(systemName: "house")
                .imageScale(.medium)
                
            Image(systemName: "house")
                .imageScale(.small)
                
            
            Image("fam")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .border(.yellow, width: 4)
            
            Image(systemName: "wifi", variableValue: 0.1)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            Image(systemName: "wifi", variableValue: 0.4)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            Image(systemName: "wifi", variableValue: 0.7)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)

            
            
            
            
            Image(systemName: "character.book.closed")
                .resizable()
                .frame(width: 100, height: 100)
                .fontWeight(.ultraLight) // !!! 
            
//            // image + cornerRadius
//            Image("fam")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 150, height: 150)
//                //.clipped()
//                .cornerRadius(150) // very round
//                .border(.yellow, width: 4)
//
//            // image + clip into shape
//
//            Image("fam")
//                .resizable()
//                .scaledToFill() // трішки за рамки
//                .frame(width:150, height: 250)
//                .clipShape(Circle())
//                .border(.yellow, width: 4)
            
            // image + картинки без тла (png) -> .renderingMode(.template) + .foregroundColor
            
//            Image("fam")
//                .renderingMode(.template)
//                .resizable()
//                .scaledToFill()
//                .frame(width: 100, height: 100)
//                .foregroundColor(Color("Beige").opacity(0.1))
            
        }
        
    }
}

struct Image_Previews: PreviewProvider {
    static var previews: some View {
        ImageView1()
    }
}

extension Image {
    func resizedToFill(width: CGFloat, height: CGFloat) -> some View {
        return self
            .resizable()
            .scaledToFill()
            .frame(width: width, height: height)
    }
}
