//
//  Sheet1.swift
//  Stack
//
//  Created by Надія on 09.11.2022.
//

import SwiftUI

struct SheetView: View {
    
    @Environment(\.presentationMode) var presMode
    
    var body: some View {
        VStack {
            Text("Details")
            
            Button {
                presMode.wrappedValue.dismiss()
            } label: {
                Text("Back")
            }
        }
    }
}

struct MainSheet:View {
    
    @State var showingDetails = false
    
    var body: some View {
        Button {
            showingDetails.toggle()
        } label: {
            Text("Show details")
        } .sheet(isPresented: $showingDetails) {
            SheetView()
        }
    }
}

struct MainSheet_Previews: PreviewProvider {
    static var previews: some View {
        MainSheet()
    }
}
