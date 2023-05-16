//
//  PublishedObject1.swift
//  Stack
//
//  Created by Надія on 09.11.2022.
//

import SwiftUI

class UserSettings: ObservableObject {
    @Published var score = 0 
}

struct PublishedObject1_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObject1()
    }
}
