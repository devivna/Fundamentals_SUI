//
//  KeyboardSubmit.swift
//  SwiftUI-Basic
//
//  Created by Students on 15.12.2022.
//

import SwiftUI

/*
 - Change button in the keyboard: .submitLabel(.continue)
    by default -> return
    change to: .continue , .join , .search, .send, .done, .go, .next, .route
 
 - Perform something when user press the Enter on the keyboard:
 .onSubmit { do something }
 
 */

struct KeyboardSubmit: View {
    
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        
        
        VStack {
            TextField("Username", text: $username) // $viewModel.username
                .submitLabel(.continue)
            SecureField("Password", text: $password) // $viewModel.password
                .submitLabel(.done)
            
                .onSubmit {
                    print("User sign up") // see in the console
                }
        }
        
    }
}

struct KeyboardSubmit_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardSubmit()
    }
}
