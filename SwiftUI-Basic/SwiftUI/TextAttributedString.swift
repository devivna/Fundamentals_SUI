//
//  TextAttributedString.swift
//  SwiftUI-Basic
//
//  Created by Students on 16.12.2022.
//

import SwiftUI

/*
 AttributedString -> modify String
 
 */
struct TextAttributedString: View {
    
    var message: AttributedString {
        var result = AttributedString("Hello!")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .teal
        return result
    }

    var message2: AttributedString {
        var result = AttributedString(" + world!")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .mint
        return result
    }
    
    var message3: AttributedString {
            var result = AttributedString("Testing 1 2 3!")
            result.font = .largeTitle
            result.foregroundColor = .white
            result.backgroundColor = .blue
            result.underlineStyle = Text.LineStyle(pattern: .solid, color: .white)
            return result
        }
    
    var body: some View {
        VStack {
            Text(message + message2)
                .padding()
            Text(message3)
        }
    }
}

struct TextAttributedString_Previews: PreviewProvider {
    static var previews: some View {
        TextAttributedString()
    }
}
