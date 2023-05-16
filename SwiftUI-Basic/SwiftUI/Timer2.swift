//
//  Timer2.swift
//  SwiftUI-Basic
//
//  Created by Students on 19.01.2023.
//

import SwiftUI

struct Timer2: View {
    
    let timer = Timer.publish(
        every: 1.0,
        on: .main,
        in: .common)
        .autoconnect()
    
    @State var currentDate: Date = Date()
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        return formatter
    }
    
    var body: some View {
        Text(dateFormatter.string(from: currentDate))
            .font(.largeTitle)
        
            .onReceive(timer) { value in
                currentDate = value
            }
    }
}

struct Timer2_Previews: PreviewProvider {
    static var previews: some View {
        Timer2()
    }
}
