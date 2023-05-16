//
//  V_DarkMode.swift
//  SwiftUI-Basic
//
//  Created by Надія on 11.12.2022.
//

import SwiftUI

struct V_DarkMode: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Primary")
                        .foregroundColor(.primary)
                    Text("Secondary")
                        .foregroundColor(.secondary)
                    Text("Set color in code (locally)")
                        .foregroundColor(colorScheme == .light
                                         ? .teal : .yellow)
                    Text("Set color in assets (globally)")
                        .foregroundColor(Color("MyTeal"))
                }
                .background(.brown.opacity(0.2))
            }
            .navigationTitle("Dark Mode")
            .navigationSplitViewStyle(.balanced)
            
        }
    }
}

struct V_DarkMode_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            V_DarkMode()
                .preferredColorScheme(.light)
            V_DarkMode()
                .preferredColorScheme(.dark)
        }
    }
}
