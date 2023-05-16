//
//  LazyGrid.swift
//  Stack
//
//  Created by Надія on 03.11.2022.
//

import SwiftUI

/*
 GridItem : size + spacing (nil) (V: <->) + alignment (nil)
 Size: fixed, flexible, adoptive
 
 .fixed(50) -> fixed width of screen <->
 
 .flexible() -> width = .infinity
 2 flexible() -> 1/2 width of screen
 .flexible(minimum: , maximum: )
 
 .adaptive(minimum: , maximum: ) - > try to fit as many as possible in one row
 
 LazyVGrid(colums: [GridItem], content:)
 LazyVGrid(
    colums: [GridItem],
    alignment: .center,
    spacing: nil,   -> between rows (|)
    pinnedViews: [.sectionHeaders],
    content: )
 
 
 content: { Section(header: content: )
 */

struct LazyGrid: View {
    
    
    // --- fixed
    var gridItems: [GridItem] = [
        GridItem(.fixed(10)),
        GridItem(.fixed(40)),
        GridItem(.fixed(40)),
        GridItem(.fixed(10))
    ]
    var body: some View {
        ScrollView() {
            LazyVGrid(columns: gridItems) {
                ForEach(0..<20) { _ in
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.orange)
                        .frame(height: 50)
                        .shadow(radius: 10)

                }
            }
        }
    }
    
    //  --- flexible + adaptive
    
//    var grid: [GridItem] = [
//        GridItem(.adaptive(minimum: 20)),
//        GridItem(.flexible(minimum: 40, maximum: 100)),
//        GridItem(.flexible(minimum: 40, maximum: 100)),
//        GridItem(.adaptive(minimum: 20))
//    ]
//
//    var body: some View {
//
//        ScrollView {
//            VStack {
//                LazyVGrid(columns: grid) {
//                    ForEach(0..<50) { _ in
//                        RoundedRectangle(cornerRadius: 10)
//                            .foregroundColor(.orange)
//                            .frame(height: 50)
//                            .shadow(radius: 10)
//                    }
//                }
//            }
//        }
//    }
    
    // ----- instagram + section
        
//    var grid = [
//        GridItem(.flexible(), spacing: 4), // spacing between colums (1 and 2)
//        GridItem(.flexible(), spacing: 8), // (2 and 3)
//        GridItem(.flexible()),
//    ]
//
//    var body: some View {
//
//        ScrollView {
//            VStack {
//
//                Text("LOGO")
//                    .font(.largeTitle)
//                    .foregroundColor(.orange)
//                    .frame(height: 300)
//
//                LazyVGrid(columns: grid,
//                          spacing: 15, // spacing between rows (up to down)
//                          pinnedViews: .sectionHeaders
//                ) {
//                    Section(header:
//                                Text("Section 1")
//                        .font(.title)
//                        .fontWeight(.semibold)
//                        .frame(maxWidth: .infinity)
//                        .foregroundColor(.orange)
//                        .background(.black)
//
//                    ){
//                        ForEach(0..<20) { _ in
//                            RoundedRectangle(cornerRadius: 10)
//                                .foregroundColor(.orange)
//                                .frame(height: 150)
//                                .shadow(radius: 10)
//                        }
//                    }
//                    Section(header:
//                                Text("Section 2")
//                        .font(.title)
//                        .fontWeight(.semibold)
//                        .frame(maxWidth: .infinity)
//                        .foregroundColor(.red)
//                        .background(.black)
//
//                    ){
//                        ForEach(0..<20) { _ in
//                            RoundedRectangle(cornerRadius: 10)
//                                .foregroundColor(.red)
//                                .frame(height: 150)
//                                .shadow(radius: 10)
//                        }
//                    }
//
//
//                }
//
//            }
//        }
//    }
    
    
    
    
    
    
//    let colums: [GridItem] = [
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil)
//    ]
//
//    var body: some View {
//        ScrollView {
//
//            Rectangle()
//                .fill(.white)
//                .frame(height: 300)
//
//            LazyVGrid(columns: colums) {
//                ForEach(0..<150) { index in
//                    Rectangle()
//                        .frame(height: 120)
//                }
//            }
//        }
//    }
}

struct LazyGrid_Previews: PreviewProvider {
    static var previews: some View {
        LazyGrid()
    }
}
