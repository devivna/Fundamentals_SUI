//
//  Alert1.swift
//  Stack
//
//  Created by Надія on 04.11.2022.
//

import SwiftUI

struct Alert111: View {
    
    @State var showingAlert: Bool = false
    
    var body: some View {
        
//        VStack {
//
            Button("Discard all changes") {
                showingAlert.toggle()
            }
//        }
//            .alert(Text("Error"), isPresented: $showingAlert) {
//                Alert(title: Text("acsd"),
//                      message: Text("mes"),
//                      dismissButton: Alert.Button.cancel())
//            }
            
            //            Button {
//                //showingAlert.toggle()
//                } label: {
//                    Text("Discard all changes")
//                }
//                .alert("Error", isPresented: $showingAlert) {
//                    Alert(title: Text("Error #1"))
//                }
        }
    }


struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        Alert111()
    }
}
