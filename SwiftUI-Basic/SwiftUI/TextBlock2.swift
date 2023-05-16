//
//  TextBlock2.swift
//  Stack
//
//  Created by Надія on 05.12.2022.
//

import SwiftUI

/*
 .frame(width: , height: , alignment: )
 
 */

struct TextBlock2: View {
    var body: some View {
        ScrollView {

            
            
            
            VStack {
                Text("text + system")
                    .font( .system(size: 40))
                    .padding()
                
                Text("text")
                    .font(.system(size: 18))
                Text("text")
                    .font(.system(size: 18, weight: Font.Weight.semibold))
                Text("text")
                    .font(.system(size: 18, weight: Font.Weight.light, design: Font.Design.rounded))
                
                Text("text")
                    .font(.system(.title))
                Text("text")
                    .font(.system(Font.TextStyle.title))
                Text("text")
                    .font(.system(.callout, design: .rounded, weight: .bold))
            }

// ??
//                    Text("monospaced")
//                        .monospaced()
//                    // Returns a fixed-width font from the same family as the base font.
//                    Text("monospacedDigit")
//                        .monospacedDigit()
//                 // Returns a modified font that uses fixed-width digits, while leaving other characters proportionally spaced.
                    
                    //            func smallCaps() -> Font
                    //            Adjusts the font to enable all small capitals.
                    //            func lowercaseSmallCaps() -> Font
                    //            Adjusts the font to enable lowercase small capitals.
                    //            func uppercaseSmallCaps() -> Font
                    //            Adjusts the font to enable uppercase small capitals.

            
            VStack {
                Text("backgroundcolor in text")
                    .font(.system(size: 40))
                    .padding(5)
               
                
//                Group {
//                    Text("Hello")
//                        .foregroundColor(.blue)
//                    Text("Hello")
//                        .foregroundColor(Color(
//                            red: 0.4,
//                            green: 0.9,
//                            blue: 0.7))
//                    Text("Hello")
//                        .foregroundColor(Color(
//                            red: 0.4,
//                            green: 0.9,
//                            blue: 0.7,
//                            opacity: 0.4))
//                    Text("Hello")
//                        .foregroundColor(Color("MyGreen")) // color's name from assets
//                    Text("Hello")
//                        .foregroundColor(Color(
//                            hue: 0.5,
//                            saturation: 0.5,
//                            brightness: 0.5))
//                    Text("Hello")
//                        .foregroundColor(Color(
//                            hue: 0.5,
//                            saturation: 0.5,
//                            brightness: 0.5,
//                            opacity: 0.5))
//                }
            }
            
            
            // -- more complex style of text (like gradient) -> .foregroundStyle()
            
            VStack {
                Text("Gradient")
                    .foregroundStyle(.orange.gradient)
                    .font(.largeTitle)
                Rectangle().fill(.blue.gradient)
            }
            
            
            
            
            
            // --
            
            VStack {
                Text("text + frame -> alignment")
                    .font(.system(size: 40))
                
//                Text("frame + leading")
//                    .frame(width: 100, height: 20, alignment: .leading)
//
//                Group {
//                    Text("frame + leading")
//                        .frame(width: 100, height: 20, alignment: .leading)
//                    Text("frame + topLeading")
//                        .frame(width: 100, height: 20, alignment: .topLeading)
//                    Text("frame + bottomLeading")
//                        .frame(width: 100, height: 20, alignment: .bottomLeading)
//                    Text("frame + leadingFirstTextBaseline")
//                        .frame(width: 100, height: 20, alignment: .leadingFirstTextBaseline)
//                    Text("frame + leadingLastTextBaseline")
//                        .frame(width: 100, height: 20, alignment: .leadingLastTextBaseline)
//                }
//
//                Group {
//                    Text("frame + trailing")
//                        .frame(width: 100, height: 20, alignment: .trailing)
//                    Text("frame + topTrailing")
//                        .frame(width: 100, height: 20, alignment: .topTrailing)
//                    Text("frame + bottomTrailing")
//                        .frame(width: 100, height: 20, alignment: .bottomTrailing)
//                    Text("frame + trailingFirstTextBaseline")
//                        .frame(width: 100, height: 20, alignment: .trailingFirstTextBaseline)
//                    Text("frame + trailingLastTextBaseline")
//                        .frame(width: 100, height: 20, alignment: .trailingLastTextBaseline)
//                }
//
//                Group {
//                    Text("frame + center")
//                        .frame(width: 100, height: 20, alignment: .center)
//                    Text("frame + centerFirstTextBaseline")
//                        .frame(width: 100, height: 20, alignment: .centerFirstTextBaseline)
//                    Text("frame + centerLastTextBaseline")
//                        .frame(width: 100, height: 20, alignment: .centerLastTextBaseline)
//                }
//                Group {
//                    Text("frame + top")
//                        .frame(width: 100, height: 20, alignment: .top)
//                    Text("frame + bottom")
//                        .frame(width: 100, height: 20, alignment: .bottom)
//                }
            }
            
            
            VStack{
                Text("Minimun Scale Factor")
                    .minimumScaleFactor(0.1)
                
                /// Sets a transform for the case of the text contained in this view when
                /// displayed.
                ///
                /// The default value is `nil`, displaying the text without any case
                /// changes.
                ///
                /// - Parameter textCase: One of the ``Text/Case`` enumerations; the
                ///   default is `nil`.
                /// - Returns: A view that transforms the case of the text.

            }
            
            
            
        }
    }
}

struct TextBlock2_Previews: PreviewProvider {
    static var previews: some View {
        TextBlock2()
    }
}
