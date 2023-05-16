//
//  TextEditorUI.swift
//  SwiftUI-Basic
//
//  Created by Надія on 10.12.2022.
//

import SwiftUI

/*
 
 
 
 
 Text Selection:
    Text() .textSelection(.disabled) - by default
    Text() .textSelection(.anabled) - can copy or share text
 
 
 */


struct TextEditor111: View {
    
//    @State var text = "This is some text here..."
//    @State var savedText: [String] = []
//    var body: some View {
//        NavigationView{
//            VStack{
//                TextEditor(text: $text)
//                    .frame(height: 250)
//                    .background(.brown.opacity(0.2))
//
//                Button {
//                    save()
//                    text = ""
//                } label: {
//                    Text("Save" .uppercased())
//                        .padding()
//                        .background(.white)
//                        .cornerRadius(10)
//                        .shadow(radius: 10)
//
//                }
//
//                ForEach(savedText, id: \.self) { someText in
//                    Text(someText)
//                        .padding()
//                        .background(.gray.opacity(0.15))
//                }
//
//            }
//
//
//            .navigationTitle("Title")
//        }
//    }
//
//    func save() {
//        savedText.append(text)
//    }

    // not saved just show
    @State var text = "Taping here..."
    @State var savedText = ""
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $text)
                    .frame(height: 250)
                    .background(.brown.opacity(0.2))
                
                Button {
                    savedText = text
                } label: {
                    Text("Save" .uppercased())
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                    
                }
                
                    Text(savedText)
                        .padding()
                        .background(.gray.opacity(0.15))
                }
            .navigationTitle("Title")
        }
    }
}

struct TextEditor111_Previews: PreviewProvider {
    static var previews: some View {
        TextEditor111()
    }
}
