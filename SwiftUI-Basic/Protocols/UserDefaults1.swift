//
//  UserDefaults.swift
//  Stack
//
//  Created by Надія on 09.11.2022.
//

import SwiftUI

struct User: Encodable {
    var firstName: String
    var secondName: String
}

struct UserDefaults1: View {
    
    @State var user = User(firstName: "John", secondName: "Watson")
    
    var body: some View {
        
        Button {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "user")
            }
        } label: {
            Text("Save user")
        }
    }
}

struct UserDefaults1_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaults1()
    }
}
