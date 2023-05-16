//
//  ModifyView.swift
//  Stack
//
//  Created by Надія on 09.11.2022.
//

import SwiftUI

struct ModifyView: View {
    
    var body: some View {
            Image(systemName: "cloud")
            .padding()
            .background(.white)
            .colorMultiply(.blue)
            .saturation(0.5)
            .contrast(0.6)
        
    }
}

struct ModifyView_Previews: PreviewProvider {
    static var previews: some View {
        ModifyView()
    }
}
