//
//  LabelStyles1.swift
//  SwiftUI-Basic
//
//  Created by Students on 17.12.2022.
//

import SwiftUI

/*
 .labelStyle: .titleAndIcon, .titleOnly, .iconOnly -> .labelStyle(.titleAndIcon)
 
 */

struct LabelStyles1: View {
    var body: some View {
        Label("Title", systemImage: "car")
            //.labelStyle(.iconOnly)
            //.labelStyle(.titleOnly)
            //.labelStyle(.titleAndIcon)
            
        
    }
}

struct LabelStyles1_Previews: PreviewProvider {
    static var previews: some View {
        LabelStyles1()
    }
}
