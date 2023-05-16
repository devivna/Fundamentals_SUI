//
//  Binding1.swift
//  Stack
//
//  Created by Надія on 08.11.2022.
//

import SwiftUI

/*
 var -> read a value
 $var -> read and write a value
 
 Main View -> @State = "1"
  + SubView(varSV: $varMV)    <- only binding var 
 SubView -> @Binding : Int
 
 in SV -> $State -> button change this var
    - SubView(this var won't be)
 
 */

struct BindingPW: View {
    
    @State var background = Color.mint
    @State var title = "To sign up press the button"

    var body: some View {

        ZStack {
            background
                .ignoresSafeArea()

            VStack {
                Text(title)
                ButtonView(background: $background, title: $title)
            }

        }
    }
}

struct ButtonView: View {

    @Binding var background: Color
    @Binding var title: String
    @State var btnCol = Color.red

    var body: some View {

        Button {
            background = .orange
            title = "You've signed up"
            btnCol = Color.purple
        } label: {
            Text("Button")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 10)
                .background(btnCol)
                .cornerRadius(10)
                .shadow(radius: 10)
        }

    }
}




struct BindingPW_Previews: PreviewProvider {
    static var previews: some View {
        BindingPW()
    }
}
