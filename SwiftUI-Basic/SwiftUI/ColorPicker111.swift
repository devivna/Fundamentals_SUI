//
//  ColorPicker111.swift
//  SwiftUI-Basic
//
//  Created by Надія on 10.12.2022.
//

import SwiftUI

struct ColorPicker111: View {
    
    @State var selectedColor: Color = .gray
    @State var selectedDate: Date = Date() // automaticaly choose a now day
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2022)) ?? Date() // optional!!
    let endingDate: Date = Date()
    
    var dataFormatterShort: DateFormatter {
        let formatter1 = DateFormatter()
        formatter1.dateStyle = .short
        
        return formatter1
    }
    
    var dataFormatterLong: DateFormatter {
        let formatter2 = DateFormatter()
        formatter2.dateStyle = .long
        return formatter2
    }
    
    var dataFormatterMedium: DateFormatter {
        let formatter3 = DateFormatter()
        formatter3.dateStyle = .medium
        return formatter3
    }
    
    var timeFormatter: DateFormatter {
        let formatter4 = DateFormatter()
        formatter4.timeStyle = .short // long (+ GMT+2), mediun (+ sec)
        return formatter4
    }
    
    let today = Date()
    
    var body: some View {
        
        ZStack {
            selectedColor
                .ignoresSafeArea()
            
            VStack {
                ColorPicker("Title", selection: $selectedColor)
                
                
                DatePicker("Select a date", selection: $selectedDate, displayedComponents: .date)
                    .datePickerStyle(.compact) // in one line
                //.datePickerStyle(.wheel)
                //.datePickerStyle(.graphical) // show calendar
                
                DatePicker("Select time", selection: $selectedDate, displayedComponents: .hourAndMinute)
                // .datePickerStyle(.compact) by default
                
                DatePicker("Select time and date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
                
                // limit date
                
                DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: .date)
                
                Text(dataFormatterShort.string(from: today))
                Text(dataFormatterLong.string(from: today))
                Text(dataFormatterMedium.string(from: today))
                
                Text(timeFormatter.string(from: today))
                
            }
            .padding()
            .padding(.horizontal)
            .background(.white.opacity(0.4))
            .cornerRadius(20)
            .padding()
            
            
                
        }
        
        
        
    }
}

struct ColorPicker111_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicker111()
    }
}
