//
//  List.swift
//  Stack
//
//  Created by Надія on 03.11.2022.
//

import SwiftUI

struct Music: View {
    var name: String
    
    var body: some View {
        Text("Music: \(name)")
    }
}

struct Music_Previews: PreviewProvider {
    static var previews: some View {
        List {
            Music(name: "Rock")
            Music(name: "Pop")
            Music(name: "Soul")
            Music(name: "Jaz")
            Music(name: "R&B")
        }
    }
}
