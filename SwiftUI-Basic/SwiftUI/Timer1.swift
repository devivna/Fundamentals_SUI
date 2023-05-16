//
//  Timer1.swift
//  SwiftUI-Basic
//
//  Created by Students on 22.12.2022.
//

import SwiftUI

struct Timer1: View {
    
    let interval: TimeInterval = 30 // TimeInterval = Double
    var body: some View {
        Text(" ")
//        Text(Date().addingTimeInterval(interval), style: .timer)
    }
    
    
}

extension Date {
    
    func formatted(as format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    
}



struct Timer1_Previews: PreviewProvider {
    static var previews: some View {
        Timer1()
    }
}
