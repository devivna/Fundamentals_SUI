//
//  ColorView.swift
//  SwiftUI-Basic
//
//  Created by Надія on 05.12.2022.
//

import SwiftUI

/*
 
 Type of color:
 basic: red, orange, yellow, green, blue, purple, pink, brown, white, gray, black
 standart: mint, indigo(light purple), teal (blue+greeen), cyan (sky)
 ?  clear, primary, secondary

  -- primary:
        dark mode - white by default
        light mode - black by default

 
 
 
 */


struct ColorView: View {
    var body: some View {
 
        
//        RoundedRectangle(cornerRadius: 20)
//            .frame(width: 300, height: 200)
//
        
        // -- standart color + opacity
//        .foregroundColor(.teal.opacity(0.5))
                // fill - don't propose
        

//         .foregroundColor(.primary)
        
        // -- color panel

        //          .foregroundColor(Color.init(
//              hue: 0.4,
//              saturation: 0.5,
//              brightness: 0.6)) // + opacity

//                    .foregroundColor(Color.init(
//                red: 0.4,
//                green: 0.5,
//                blue: 0.6)) //!!! бузковий колір =))
                                // + opacity
            
        // system's colors
            
           //.foregroundColor(Color(UIColor.secondarySystemBackground))
        
            //.foregroundColor(Color.init(uiColor: .darkGray))
            //.foregroundColor(Color.init(uiColor: .lightGray))
            //.foregroundColor(Color.init(uiColor: .magenta)) // very light purple
            //.foregroundColor(Color.init(uiColor: .systemBlue))
            //.foregroundColor(.blue)
            //.foregroundColor(Color.init(uiColor: .systemGray6)) // 2-6 from light to dark gray
            //.foregroundColor(Color.init(uiColor: .secondarySystemBackground))
                    // dark mode - майже чорний
                    // light mode - майже білий
        
            // !!! see uiColor
        
        // -- custom color (use assets)
        
//        ZStack {
//            Rectangle()
//                .frame(width: 300, height: 300)
//                .foregroundColor(Color("MyTeal"))
//            Rectangle()
//                .frame(width: 200, height: 200)
//                .foregroundColor(Color("MyPurple"))
//            Rectangle()
//                .frame(width: 100, height: 100)
//                .foregroundColor(Color("Beige"))
//        }
        
        // -- shadow
        
        // shadow - black
//        VStack {
//            Spacer()
//            HStack {
//                Rectangle()
//                    .frame(width: 100, height: 50)
//                    .foregroundColor(Color("MyTeal"))
//                    .shadow(radius: 20)
//                Rectangle()
//                    .frame(width: 100, height: 50)
//                    .foregroundColor(Color("MyPurple"))
//                    .shadow(radius: 20)
//                Rectangle()
//                    .frame(width: 100, height: 50)
//                    .foregroundColor(Color("Beige"))
//                    .shadow(radius: 20)
//            }
//        }
        
        // shadow - another color
//            HStack {
//                Rectangle()
//                    .frame(width: 100, height: 50)
//                    .foregroundColor(Color("MyTeal"))
//                    .shadow(color: .gray, radius: 25)
//                Rectangle()
//                    .frame(width: 100, height: 50)
//                    .foregroundColor(Color("MyPurple"))
//                    .shadow(color: .gray, radius: 25)
//            }
        
        // shadow + offset
 
        VStack {
            Rectangle()
                .frame(width: 100, height: 50)
                .foregroundColor(Color("MyTeal"))
                .shadow(color: Color("MyTeal"), radius: 25, x:0, y:-10)  // y(up)

                .padding(30)

            Rectangle()
                .frame(width: 100, height: 50)
                .foregroundColor(Color("MyTeal"))
                .shadow(color: Color("MyTeal"), radius: 25, x:0, y:0) // all corner

                .padding(30)

            Rectangle()
                .frame(width: 100, height: 50)
                .foregroundColor(Color("MyTeal"))
                .shadow(color: .black, radius: 25, x:-10, y:-10) // x: left, y: up
                .padding(30)

            Rectangle()
                .frame(width: 100, height: 50)
                .foregroundColor(Color("MyTeal"))
                .shadow(color: Color("MyTeal"), radius: 25, x:10, y:10)
                .padding(30)

            Rectangle()
                .frame(width: 100, height: 50)
                .foregroundColor(Color("MyTeal"))
                .shadow(color: Color("MyTeal"), radius: 25, x:-10, y:0)

        }

//        // x: +(right) - (left)
//        // y: +(down) - (up)

                            
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
