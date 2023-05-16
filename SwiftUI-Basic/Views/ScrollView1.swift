//
//  ScrollView.swift
//  Stack
//
//  Created by Надія on 03.11.2022.
//

import SwiftUI

/*
 
 ScrollView(content:)
 ScrollView(.vertical, showIndicators: false, content: ) + VStack
 ScrollView(.horizontal, showIndicators: false, content: ) + HStack
 
 LazyVStack and LazyHStack - create an item when it need to
 use when you don't need to download all the data, only what you see on the screen
 
 */


struct ScrollView1: View {
    var body: some View {
        
        ScrollView {
            // Lazy stack - downloading the data only when you see it
            LazyVStack(spacing: 20) {
                ForEach(0..<10) { _ in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 7) {
                            ForEach(0..<10) { index in
                                VStack(spacing: 10) {
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 120, height: 70)
                                        .foregroundColor(.white)
                                        .shadow(color: .black.opacity(0.4),radius: 10)
                                        .padding(.vertical, 10)
                                    Text("Title \(index)")
                                        .font(.caption)
                                }
                            }
                        }
                    }
                }
            }
        }
        
        
        
//        ScrollView {
//            LazyVStack {
//                  ForEach(0..<100) { index in
//                      ScrollView(.horizontal, showsIndicators: false) {
//                        LazyHStack {
//                            ForEach(0..<5) { index in
//                                RoundedRectangle(cornerRadius: 25)
//                                    .fill(.white)
//                                    .frame(width: 150, height: 100, alignment: .center)
//                                    .shadow(radius: 10)
//                                    .padding(4)
//                                    .padding(.vertical, 10)
//                            }
//                        }
//                    }
//                }
//            }
//        }
    }
}

struct ScrollView1_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView1()
    }
}
