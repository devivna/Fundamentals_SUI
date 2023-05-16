//
//  PW_FocusState111.swift
//  SwiftUI-Basic
//
//  Created by Students on 15.12.2022.
//

import SwiftUI

/*
 -- FocusState + ENUM
 
 1) enum :Hashable + case name
 2) @FocusState var name: Enum?
 3) TextField() .focused($varFocus, equals: .case)
 4) Button { varFocus = .case }
 
 */

struct PW_FocusState111: View {
    
    @State var username = ""
    @State var password = ""
    
    enum FocusStateOption: Hashable {
        case username
        case password
    }
    
    @FocusState var fieldInFocus: FocusStateOption?

    var body: some View {
        VStack {
            TextField("Enter name", text: $username)
                .focused($fieldInFocus, equals: .username)
            SecureField("Enter password", text: $password)
                .focused($fieldInFocus, equals: .password)
            
            Button {
                let nameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if !nameIsValid {
                    fieldInFocus = .username
                } else if !passwordIsValid {
                    fieldInFocus = .password
                } else {
                    print("Sign In")
                }
                    
            } label: {
                Text("Sign UP")
            }
        }
    }

    
//    @State private var userName = ""
//    @FocusState private var userNameInFocus: Bool
//
//    @State private var password = ""
//    @FocusState private var passwordInFocus: Bool
//
//    var body: some View {
//        VStack {
//            TextField("Type your name here ...", text: $userName)
//                .focused($userNameInFocus)
//                .padding()
//                .foregroundColor(.black)
//                .background(.gray.opacity(0.1))
//                .cornerRadius(10)
//                .padding()
//
//            TextField("Type your password here ...", text: $password)
//                .focused($passwordInFocus)
//                .padding()
//                .foregroundColor(.black)
//                .background(.gray.opacity(0.1))
//                .cornerRadius(10)
//                .padding()
//
//            Button {
//                let nameIsValid = !userName.isEmpty
//                let passwordIsValid = !password.isEmpty
//                if !nameIsValid {
//                    userNameInFocus = true
//                    passwordInFocus = false
//                } else if !passwordIsValid {
//                    userNameInFocus = false
//                    passwordInFocus = true
//                } else {
//                    print("Sign UP")
//                }
//            } label: {
//                Text("Sign UP")
//
//            }
//            .buttonStyle(.bordered)
//            .buttonBorderShape(.capsule)
//            .controlSize(.large)
//        }
//    }
    
    
    // --- focused + hashable
    
//    @State private var userName = ""
//    @State private var password = ""
//
//    enum OnBoardingField: Hashable {
//        case userName
//        case password
//    }
//
//    @FocusState private var fielfInFocus: OnBoardingField?
//
//    var body: some View {
//        VStack {
//            TextField("Type your name here ...", text: $userName)
//                .focused($fielfInFocus, equals: .userName)
//                .padding()
//                .foregroundColor(.black)
//                .background(.gray.opacity(0.1))
//                .cornerRadius(10)
//                .padding()
//
//            TextField("Type your password here ...", text: $password)
//                .focused($fielfInFocus, equals: .password)
//                .padding()
//                .foregroundColor(.black)
//                .background(.gray.opacity(0.1))
//                .cornerRadius(10)
//                .padding()
//
//            Button {
//                let nameIsValid = !userName.isEmpty
//                let passwordIsValid = !password.isEmpty
//                if !nameIsValid {
//                    fielfInFocus = .userName
//                } else if !passwordIsValid {
//                    fielfInFocus = .password
//                } else {
//                    print("Sign UP")
//                }
//            } label: {
//                Text("Sign UP")
//
//            }
//            .buttonStyle(.bordered)
//            .buttonBorderShape(.capsule)
//            .controlSize(.large)
//        }
//    }
}

struct PW_FocusState111_Previews: PreviewProvider {
    static var previews: some View {
        PW_FocusState111()
    }
}
