//
//  SafeArea.swift
//  SwiftUI-Basic
//
//  Created by Надія on 08.12.2022.
//

import SwiftUI

/*
 
  .ignoresSafeArea(.all)
 
  ?.ignoresSafeArea(.container)
  The safe area defined by the device and containers within the user interface, including elements such as top and bottom bars.
 
  ?.ignoresSafeArea(.keyboard)
  The safe area matching the current extent of any software keyboard displayed over the view content.
 
 
 // OLD
 // .edgesIgnoringSafeArea: top, leading, bottom, trailing, all, horizontal, vertical
 
!! use only for backgrounds => backgroung (color + .ignoresSafeArea(.all))
 
 */

struct SafeArea: View {
    var body: some View {
                
        
        
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.orange.opacity(0.3))
            .ignoresSafeArea(.all) // by default
           
        
        // -- safe area + text at the top
        
//        ZStack {
//            Color.orange.opacity(0.3)
//                .edgesIgnoringSafeArea(.all)
//            VStack {
//                Text("Hello, World!")
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//                Spacer()
//            }
//        }
    }
}

struct SafeArea_Previews: PreviewProvider {
    static var previews: some View {
        SafeArea()
    }
}
