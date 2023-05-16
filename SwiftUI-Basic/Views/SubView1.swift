//
//  SubView1.swift
//  Stack
//
//  Created by Надія on 08.11.2022.
//

import SwiftUI

/*
 
 use another View INSIDE your main body View:
 1 - only use this sub View in this Main View (Struct)
 2 - when the data is not going to change
 
 use Extart SubView -> another struct - when the data is gonna change
 
 */


struct SubView1: View {
        
    var body: some View {
        
        ZStack {
            Color.mint.opacity(0.8)
                .ignoresSafeArea()
            
            fruitsLayer
            
        }
        
    }
    
    // when data is static and not gonna be change -> var name: some View { }
    
    var fruitsLayer: some View {
        HStack {
            FruitBlock(number: 1, fruit: "Banana", backgroundColor: .yellow)
            FruitBlock(number: 3, fruit: "Oranges", backgroundColor: .orange)
            FruitBlock(number: 9, fruit: "Cherries", backgroundColor: .red)
        }
    }
    
}

struct FruitBlock: View {

    var number: Int
    var fruit: String
    var backgroundColor: Color

    var body: some View {
        VStack(spacing: 20) {
            Text("\(number)")   // !!! Int must be with string interpolation
                .font(.largeTitle)
            Text("\(fruit)")    // String may be simplier
                .font(.headline)
        }
        .padding()
        .padding(.horizontal, 8)
        .background(backgroundColor)
        .cornerRadius(10)
        
    }

}


struct SubView1_Previews: PreviewProvider {
    static var previews: some View {
        SubView1()
    }
}
