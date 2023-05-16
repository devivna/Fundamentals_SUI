//
//  MultilineText.swift
//  SwiftUI-Basic
//
//  Created by Надія on 06.12.2022.
//

import SwiftUI

/*
MULTILINE TEXT:
- alignment: .center, .leading (by default), .trailing
       -> .multilineTextAlignment(.center)
- line spacing  - відстань між рядками - to set the amount of spacing from the bottom of one line to the top of the next for text elements in the view
       -> .linespacing(20)
 
 - baselineOffSet (then multilineTextAlignment) - місце внизу(+) / зверху(-) рядка -> .baselineOffset(10)

 - minimumScaleFactor(0.1) -> від 0 до 1 -> 10% розмір шрифту від рамки?
    необхідний щоб вмістити текст в рамку за рахунок зменшення розміру тексту та встановлення його мінімального розміру

 
 */


struct SliderMultilineText: View {
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
        }
    }
}

struct MultilineText: View {
    var body: some View {
        VStack {
            

            // ------ multiline + line offset
                
            // 10 pics - відстань між рядками (знизу)
//                Text("baseline offset (down)")
//                    .baselineOffset(10)

            // (above (up) each line)
//                Text("baseline offset (up)")
//                    .baselineOffset(-10)

            
            
            // ------- Limit lines

//            Text("Just limit lines")
//                .underline()
//            Text("My name is Nadia. I live in Kyiv. I have a sister named Anastasia. My mum called Natasha and my dad called Grisha. I have a cat. Its name is Karen. I love him with all my heart.")
//                .lineLimit(3)

            
            // --- limit lines (range) + frame
            
//            Text("My name is Nadia. I live in Kyiv. I have a sister named Anastasia. My mum called Natasha and my dad called Grisha. I have a cat. Its name is Karen. I love him with all my heart.")
//                .lineLimit(3...8)
//                .frame(width: 200)



            // -- крапки по середині = truncationMode(.middle)
            
//            Text("My name is Nadia. I live in Kyiv. I have a sister named Anastasia. My mum called Natasha and my dad called Grisha. I have a cat. Its name is Karen. I love him with all my heart.")
//                .lineLimit(3)
//                .truncationMode(.middle)
            
            // -- крапки в кінці = truncationMode(.tail)
            
//            Text("My name is Nadia. I live in Kyiv. I have a sister named Anastasia. My mum called Natasha and my dad called Grisha. I have a cat. Its name is Karen. I love him with all my heart.")
//            .lineLimit(3)
//            .truncationMode(.tail)
            
 
            
            // multiline + padding
            
  //          VStack {
  //              Text("My name is Nadia.")
  //                  .font(.largeTitle)
  //                  .fontWeight(.semibold)
  //                  .padding(.bottom, 15)
  //              Text("This is a little introduction about myself. I live in Kyiv. I have a sister named Anastasia. My mum called Natasha and my dad called Grisha. I have a cat. Its name is Karen. I love him with all my heart.")
  //                  .font(.caption)
  //          }
  //          .padding()                        // for elements in VStack
  //          .padding(.vertical, 15)
  //          .background(
  //            Color.white
  //            .cornerRadius(10)
  //            .shadow(color: .black.opacity(0.3), radius: 20, y: 10)
  //          )
  //          .padding(.horizontal, 10)         // for VStack
            
            // -- exectly specific lines -> .lineLimit(1, reservesSpace: true)
            // the text view will be sized to be two lines in height no matter what its contents.
            
            Text("My name is Nadia.")
                .lineLimit(1, reservesSpace: true)
            
            
        }
    }
}

struct MultilineText_Previews: PreviewProvider {
    static var previews: some View {
        MultilineText()
    }
}
