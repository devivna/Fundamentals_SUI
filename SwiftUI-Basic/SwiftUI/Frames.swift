//
//  Frames.swift
//  Stack
//
//  Created by Надія on 02.11.2022.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        Text("Hello, World!")
        //.frame(maxHeight: .infinity)
        //.frame(maxWeight: .infinity)
        
            .frame(alignment: .center)
            .background(Color.yellow)
            .frame(height: 130, alignment: .bottom)
            .background(Color.orange)
            .frame(width: 280, alignment: .bottomTrailing)
            .background(Color.red)
            .frame(maxHeight: .infinity, alignment: .bottomTrailing)
            .background(Color.pink)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .background(Color.purple)
        
    }
}

struct Frames_Previews: PreviewProvider {
    static var previews: some View {
        Frames()
    }
}

