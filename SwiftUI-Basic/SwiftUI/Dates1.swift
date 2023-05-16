//
//  Dates1.swift
//  SwiftUI-Basic
//
//  Created by Students on 17.12.2022.
//

import SwiftUI

struct Dates1: View {
    var body: some View {
       
        ScrollView {
            // --  range of dates
            Text(Date.now...Date.now.addingTimeInterval(600))

            
            // show just the date
            Text(Date.now, style: .date)
            // ? - Text(Date.now.addingTimeInterval(1000), style: .date)
            
            // show just the time
            Text(.now, style: .time)
            
            // timer + relative (min, sec) = show the relative distance from now, automatically updating
            Text(Date.now.addingTimeInterval(600), style: .relative) // 10 min
            Text(Date().addingTimeInterval(-86400), style: .relative) // 1 day
            
            // timer = make a timer style, automatically updating
            Text(.now.addingTimeInterval(3600), style: .timer) // 60 min
            
            
        }
        
        
    }
}

struct Dates1_Previews: PreviewProvider {
    static var previews: some View {
        Dates1()
    }
}
