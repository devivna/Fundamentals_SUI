//
//  Sheet&FullScreenCover.swift
//  SwiftUI-Basic
//
//  Created by Надія on 14.12.2022.
//

import SwiftUI

struct Sheet_FullScreenCover: View {
    
    @State private var showSheet = false

    var body: some View {

        ZStack {
            Color.mint
                .ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("button")
            }
            .tint(.white)
            .buttonStyle(.bordered)
            .controlSize(.large)
            
//            .sheet(isPresented: $showSheet) {
//                AnotherView()
//            }
            .fullScreenCover(isPresented: $showSheet) {
                AnotherView()
            }
            
        }
    }
}

struct AnotherView: View {
    //@Environment(\.presentationMode) var pM
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        HStack(alignment: .top) {
            Button {
               // pM.wrappedValue.dismiss()
                dismiss()
            } label: {
                Image(systemName: "xmark")
            }
        }
        
    }
}

struct Sheet_FullScreenCover_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_FullScreenCover()
    }
}
