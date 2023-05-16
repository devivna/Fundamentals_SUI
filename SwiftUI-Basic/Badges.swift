//
//  Badges.swift
//  SwiftUI-Basic
//
//  Created by Students on 15.12.2022.
//

import SwiftUI

/*
 badge: Int, String
 
 .badge + tabView
 .badge + list
 */

struct Badges: View {
    var body: some View {


//        TabView {
//            Color.brown.opacity(0.6)
//                .tabItem {
//                    Image(systemName: "heart")
//                }
//                .badge(0)
//
//            Color.brown.opacity(0.6)
//                .tabItem {
//                    Image(systemName: "house")
//                }
//                .badge(2)
//
//            Color.brown.opacity(0.6)
//                .tabItem {
//                    Image(systemName: "gear")
//                }
//                .badge("new")
            
        List {
            Text("Title")
                .badge("new")
            Text("Title")
                .badge("update")
            Text("Title")
                .badge(2)
        }
    }
}

struct Badges_Previews: PreviewProvider {
    static var previews: some View {
        Badges()
    }
}
