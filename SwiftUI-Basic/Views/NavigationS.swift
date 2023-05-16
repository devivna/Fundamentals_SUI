//
//  NavigationViewS.swift
//  SwiftUI-Basic
//
//  Created by Надія on 09.12.2022.
//

import SwiftUI

/*
 Navigation View
 
 -> Title: .navigationTitle("")
 
 -> Style: .navigationBarTitleDisplayMode(.automatic) :
    (.automatic) // by default
    (.inline) // in box at the top
    (.large) // largeTitle
 
 -> Link: NavigationLink
        (dectination: View, label: View)
        ( _title: String, dectination: View)
 
 
 -> new : .toolbar {} -> ToolBarItem(placement: .navigationBarTrailing, content: View)
 -> old : .navigationBarItems

 
 -> Hidden Bar Button: .navigationBarBackButtonHidden(true)
 
 SecondView:
-> has inferered Navigation Title ("")
 
 -> dismiss Button:
 
    -> new: $Environment(\.dismiss) var dismiss
        Button { dismiss() }
        -> old: @Environment(\.presenationMode) var pM
        Button( pM.wrappedValue.dismiss()
 
 */

struct NavigationS: View {
    var body: some View {
        
        NavigationView {
            VStack(spacing: 30) {
                
                // link as text
                NavigationLink("Go to the 2nd screen ->", destination: SecondView222())
                    .font(.headline)
                
                
                // link as image
//                NavigationLink(
//                    destination: SecondView222(),
//                    label: {
//                        Image(systemName: "person.fill")
//                            .accentColor(.black)
//                    })
            }
    
            .navigationTitle("Title")
            //.navigationBarTitleDisplayMode(.automatic) // by default
            //.navigationBarTitleDisplayMode(.inline) // in box at the top
            //.navigationBarTitleDisplayMode(.large) // ? = automatic
        
            
            //зверху екрану кнопка для переходу на інший View
            // справа, зліва і з двох боків
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SecondView222()) {
                        Image(systemName: "person.fill")
                    }
                }
            }
            
        }
    }
}

struct SecondView222: View {
    
    // кнопка повернутись на попереднє вікно на екрані
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Return BACK")
                        .font(.headline)
                }

                
                NavigationLink("Go to the 3rd -> ", destination: Text("Welcome at the 3rd screen"))
                    .accentColor(.orange)
            }
            
            
                .navigationTitle("Second Title")
                .navigationBarBackButtonHidden(true)
        }
    }
    
}

struct NavigationS_Previews: PreviewProvider {
    static var previews: some View {
        NavigationS()
    }
}
