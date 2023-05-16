//
//  LoadingView.swift
//  SwiftUI-Basic
//
//  Created by Надія on 09.12.2022.
//

import SwiftUI

struct LoadingView: View {
    @State var isLoading = false
    
    var body: some View {

        VStack {
            Button {
                isLoading.toggle()
            } label: {
                Text("Is loading: \(isLoading.description)")
            }

            if isLoading {
                ProgressView()
            }
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
