//
//  TestNastia.swift
//  SwiftUI-Basic
//
//  Created by Students on 28.01.2023.
//

import SwiftUI

struct TestNastia: View {
    
    @State private var title = ""
    @State private var imageName = ""

    @State private var count = 0
    
    var messages = [
    "You are Awesome",
    "You are Great",
    "You are Beautiful",
    "You are really smart"
    ]
    
    var body: some View {
        VStack(spacing: 30) {
           
            Text(count == 0 ? "" : messages[count - 1])

            Button {
                if count < messages.count {
                    count += 1
                } else {
                    count = 1
                }
            } label: {
                Text("Press me")
            }
            
            Image("p\(count)")
                .resizable()
                .frame(width: 100, height: 100)
        }
    }
}

struct TestNastia_Previews: PreviewProvider {
    static var previews: some View {
        TestNastia()
    }
}
