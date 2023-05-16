//
//  IntroView.swift
//  SwiftUI-Basic
//
//  Created by Надія on 14.12.2022.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUser = false
    
    var body: some View {
        ZStack {
            RadialGradient(
                colors: [.brown.opacity(0.1), .brown.opacity(0.7)],
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            if currentUser {
                Text("Profile View")
            } else {
                OnBoardingView()
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
