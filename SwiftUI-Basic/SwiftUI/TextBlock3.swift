//
//  TextBlock3.swift
//  SwiftUI-Basic
//
//  Created by Надія on 05.12.2022.
//

import SwiftUI

/*
 TEXT
  - add spacing between letters in text -> .kerning(2) + .tracking(2)
        ? both add spacing between letters, but tracking will pull apart ligatures whereas kerning will not, and kerning will leave some trailing whitespace whereas tracking will not.
        kerning - Sets the spacing, or kerning, between characters for the text in this view
 
        .kerning - в кінці є пробіл
        .tracking - в кінці немає пробілу

 */


struct TextBlock3: View {
    
    let alignments: [TextAlignment] = [.leading, .trailing, .center]
    @State private var alignment = TextAlignment.center
    
    var body: some View {
        ScrollView {
            
            Picker("Alignment:", selection: $alignment) {
                ForEach(alignments, id: \.self) { alignment in
                    Text(String(describing: alignment))
                }
            }
            
            Text("You're alone. \nYou're on your own")
                .multilineTextAlignment(alignment)
                .lineSpacing(20)
            
            
            Text("the spacing between characters in text")
                .kerning(10)
            Text("the spacing between characters in text")
                .tracking(10)
            
            
            // -- the spacing between characters in text = kerning
            // kerning - в кінці є пробіл
            // tracking - в кінці немає пробілу
            
            
            
//                Text("the spacing between characters in text")
//                // .kerning(3)
//                .tracking(3)
//                // Sets the spacing, or kerning, between characters for the text in this view
//                // A view where text has the specified amount of kerning.
//                // The spacing to use between individual characters in text.
//                // Value of 0 sets the kerning to the system default value.
//

            
        }
    }
}

struct TextBlock3_Previews: PreviewProvider {
    static var previews: some View {
        TextBlock3()
    }
}
