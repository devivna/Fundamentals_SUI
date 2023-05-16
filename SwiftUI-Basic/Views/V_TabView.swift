//
//  111_TabView.swift
//  SwiftUI-Basic
//
//  Created by Надія on 11.12.2022.
//

import SwiftUI

/*
 TabView {} -> View + modifier .tabItem {Label()}
 
 MainView:
 
 @State private var selectedTab: Enum = .nameTag
 TabView(selection: $binding) {} -> View(selectedTab: $binding) + .tabItem {} -> .tag(Enum.nameTag)
 
 ChildView:
 
 $Binding var selectedTab: MainView.Enum
    Button { selectedTab = .nameTag}
 
 */


struct V_TabView: View {
    
    // from which View I want to start
    @State var selectedTab = 0
    
    var body: some View {
        
        TabView(selection: $selectedTab) { //  + from which View I want to start
            
            HomePage(selectedTab: $selectedTab)
            // going to the another View using Button
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            Text("Browse TAB")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Home")
                }
                .tag(1)
            
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .tableStyle(.automatic)
        
//        TabView {
//
//            HomePage()
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//
//            Text("Browse TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Home")
//                }
//
//            Text("Profile")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//
//        }
    }
}

struct HomePage: View {
    
    @Binding var selectedTab: Int // going to the another View using Button
    
    var body: some View {
        ZStack {
            Color.brown.opacity(0.2)
                .ignoresSafeArea()
            
            VStack {
                Text("Home TAB")
                
                // going to the another View using Button
                Button {
                    selectedTab = 1
                } label: {
                    Text("Go to second view ->")
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .shadow(radius: 10)
                        .clipShape(Capsule())
                }
            }
        }

        // -- simple TabView
        
//        ZStack {
//            Color.brown.opacity(0.2)
//                .ignoresSafeArea()
//            Text("Home TAB")
//        }
    }
}

struct V_TabView_Previews: PreviewProvider {
    static var previews: some View {
        V_TabView()
    }
}
