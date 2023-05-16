//
//  ContextMenu1.swift
//  SwiftUI-Basic
//
//  Created by Надія on 13.12.2022.
//

import SwiftUI

struct ContextMenu1: View {
    var body: some View {
        Text("Hide button")
            .font(.largeTitle)
            .padding()
            .padding(.horizontal)
            .background(.white)
            .clipShape(Capsule())
            .shadow(radius: 10)
        
            .contextMenu {
                Button {
                    //
                } label: {
                    Label("Home", systemImage: "house.circle")
                }
                Button {
                    //
                } label: {
                    Label("Priviuos view", systemImage: "arrowshape.backward.fill")
                }
                Button {
                    //
                } label: {
                    Label("Next view", systemImage: "arrowshape.forward.fill")
                }
                
                
                
                
            }
    }
}

struct ContextMenu1_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu1()
    }
}
