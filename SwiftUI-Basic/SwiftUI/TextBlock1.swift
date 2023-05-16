//
//  Text2.swift
//  Stack
//
//  Created by Надія on 02.11.2022.
//

import SwiftUI

/*
 .font: .largeTitle, .title, .title2, .title3, .headline, .subheadline, .callout = .system(.body), .caption, .caption2, .caption3, .footnote
 
 
 
 .fontWeight: .black, .heavy, .bold, .semibold, .medium, .regular, .light, .thin, .ultraLight
 or .bold()
    .italic()
    .underline()     + color
    .strikethrough() + color
 
 
 .fontDesign : .serif,  .monospaced .rounded .none
 
 .font(.system(size: , weight: , design: )
 
 select text: copy and share -> .textSelection(.enabled)
 
 */

struct TextBlock1: View {
    var body: some View {
        ScrollView() {
            
            VStack {
                Text("TextStyle")
                    .font(.system(size: 40))
                
                Group {
                    Text("largeTitle")
                        .font(.largeTitle)
                    Text("largeTitle")
                        .font(.system(.largeTitle)) // Font.TextStyle.largeTitle
                    
                    Text("title")
                        .font(.title)
                    Text("title2")
                        .font(.title2)
                    Text("title3")
                        .font(.title3)
                    Text("headline")
                        .font(.headline)
                }
                
                Group {
                    Text("subheadline")
                        .font(.subheadline)
                    
                    Text("callout")
                        .font(.callout)
                    Text("body")
                        .font(.system(.body)) // by default -> callout = body
                    
                    Text("caption")
                        .font(.caption)
                    Text("caption2")
                        .font(.caption2)
                    Text("footnote")
                        .font(.footnote)
                }
            }
            
            .padding()
            
            VStack {
                Text("FontWeight")
                    .font(.system(size: 40))
                
                Group {
                    Text("black")
                        .fontWeight(Font.Weight.black)
                    Text("black")
                        .font(.system(
                            size: 18,
                            weight: Font.Weight.black))
                    
                    Text("heavy")
                        .fontWeight(.heavy)
                    Text("bold")
                        .fontWeight(.bold)
                    Text("semibold")
                        .fontWeight(.semibold)
                    Text("medium")
                        .fontWeight(.medium)
                }
                
                Group {
                    
                    Text("regular")
                        .fontWeight(.regular)
                    Text("light")
                        .fontWeight(.light)
                    Text("thin")
                        .fontWeight(.thin)
                    Text("ultraLight")
                        .fontWeight(.ultraLight)
                }
            }
            
            .padding()

            
            //                Group {
            //                    Text("bold")
            //                        .bold()
            //                    Text("italic")
            //                        .italic()
            //                    Text("underline")
            //                        .underline()
            //                    Text("underline + color")
            //                        .underline(true, color: Color.red)
            //                    Text("strikethrough")
            //                        .strikethrough()
            //                    Text("strikethrough + color")
            //                        .strikethrough(true, color: Color.red)
            ////                    Text("abc")
            ////                        .strikethrough(color: .red)
            //
            //
            //              }

            
            // -- design -> .fontDesign (!!погано грузить View) or
            //          .font(.system(size: 20, weight: .medium, design: .monospaced))
            
            
            VStack {
                Text("default")
                //.fontDesign(.serif)
                Text("monospaced")
                    .font(.system(size: 20, weight: .medium, design: .monospaced))
                Text("rounded")
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                Text("serif")
                    .font(.system(size: 20, weight: .medium, design: .serif))
                Text("none")
                    .font(.system(size: 20, weight: .medium, design: .none))
            }
        }
    }
}

struct TextBlock1_Previews: PreviewProvider {
    static var previews: some View {
        TextBlock1()
    }
}
