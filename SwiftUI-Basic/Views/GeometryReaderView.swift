//
//  GeometryReaderView.swift
//  SwiftUI-Basic
//
//  Created by Students on 27.01.2023.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        GeometryReader { geometry in
            
            Rectangle()
                .frame(width: geometry.size.width * 2/3, height: 1)
            
            
            VStack(spacing: 40) {
                
                Spacer()
                
                Image(systemName: "cloud.sun.rain.fill")
                    .resizable()
                    .scaledToFit()
                
                // set 3 different colors
//                    .symbolRenderingMode(.palette)
//                    .foregroundStyle(.black, .orange, .gray)
                
                // one color
//                    .symbolRenderingMode(.monochrome)
//                    .foregroundColor(.orange)
                
                // set main color - > and other color will set automatically (lighter)
//                    .symbolRenderingMode(.hierarchical)
//                    .foregroundColor(.orange)
                
                // set all colors automatically -> nature
                  //  + you can only set background for the Image
                    .symbolRenderingMode(.multicolor)
                    .background(.blue)
                
                
                Text("Namaste")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.red)
                
                Spacer()
                
            }
            
        }
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
