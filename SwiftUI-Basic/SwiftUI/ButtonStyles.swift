//
//  ButtonStyles.swift
//  SwiftUI-Basic
//
//  Created by Students on 15.12.2022.
//

import SwiftUI

/*
 
 .buttonStyle: .buttonStyle(.bordered)
        .bordered (gray button),
        .borderedProminent (accentColor button), .
        .borderless (like ref),
        .plain (like ussual text),
        .automatic (by default)
    

 .controlSize: .large, .regular (default), .small, .mini
    .controlSize(.large)
 
 .buttonBorderShape: .capsule, .roundedRectangle (d), .roundedRectangle(radius: Int)
    .buttonBorderShape(.capsule)
 
 
 .disabled(!boolValue)
 
 */

struct ButtonStyles: View {
    var body: some View {
        ScrollView {
            Button("Button") {
                
            }
            .buttonStyle(.bordered)
            
//            Button("Button") {
//
//            }
//            .buttonStyle(.borderedProminent)
//
//            Button("Button") {
//
//            }
//            .buttonStyle(.borderless)
//
            
//           Button("Button") {
//
//            }
//            .buttonStyle(.plain)
            
            Divider()
            
                
                Button("Size") {
                    
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
                
//                Button("Size") {
//
//                }
//                .buttonStyle(.bordered)
//                .controlSize(.regular) // -> by default
//
//                Button("Size") {
//
//                }
//                .buttonStyle(.bordered)
//                .controlSize(.small)
//
//                Button("Size") {
//
//                }
//                .buttonStyle(.bordered)
//                .controlSize(.mini)

            
            Button(action: {
                //
            }, label: {
               Text("Frame + style + shape")
                    .frame(maxWidth: .infinity)
                    .padding(15)
            })
            .padding(.horizontal)
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            
        }
        
    }
}

struct ButtonStyles_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyles()
    }
}
