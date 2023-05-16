//
//  V_TabViewPage.swift
//  SwiftUI-Basic
//
//  Created by Надія on 11.12.2022.
//

import SwiftUI

/*
 .tabViewStyle(.page(indexDisplayMode: .always)) - show dots
 .tabViewStyle(.page(indexDisplayMode: .never))
*/

struct V_TabViewPage: View {
    
    let images = [
    "heart", "house", "globe"
    ]
    
    var body: some View {
        TabView {
            
            ForEach(images, id: \.self) { image in
                Image(systemName: "\(image)")
                    .resizable()
                    .scaledToFit()
                    .padding(45)
                    .background(.brown.opacity(0.2))
                    .clipShape(Circle())
            }
            
//            RoundedRectangle(cornerRadius: 10)
//                .foregroundColor(.brown.opacity(0.7))
//            RoundedRectangle(cornerRadius: 10)
//                .foregroundColor(.mint.opacity(0.6))
//            RoundedRectangle(cornerRadius: 10)
//                .foregroundColor(.teal.opacity(0.7))
        }
        .frame(height: 300)
        .padding()
        .padding(.horizontal)
        //.tabViewStyle(.page)
        .tabViewStyle(.page(indexDisplayMode: .never ))
    }
}

struct V_TabViewPage_Previews: PreviewProvider {
    static var previews: some View {
        V_TabViewPage()
    }
}
