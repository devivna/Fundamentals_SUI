//
//  ActionSheetsView.swift
//  SwiftUI-Basic
//
//  Created by Надія on 13.12.2022.
//

import SwiftUI

struct ActionSheetsView: View {
    
    // -- simple action Sheet
    
    /*
     Button + toggle binding var + .actionSheet + ActionSheet
     
     */
    
//    @State private var showActionSheet1 = false
//
//    var body: some View {
//        VStack {
//            Button {
//                showActionSheet1.toggle()
//            } label: {
//                Text("Press me")
//            }
//            .actionSheet(isPresented: $showActionSheet1, content: getActionSheet)
//        }
//    }
//
//    func getActionSheet() -> ActionSheet {
//        return ActionSheet(title: Text("Come back"))
//    }
//}

    // -- simple action Sheet + message + buttons
//    @State private var showActionSheet = false
//
//    var body: some View {
//        VStack {
//            Button {
//                showActionSheet.toggle()
//            } label: {
//                Text("Press me")
//            }
//            .actionSheet(isPresented: $showActionSheet) {
//                getActionSheet()
//            }
//        }
//    }
//
//    func getActionSheet() -> ActionSheet {
//
//        let button1: ActionSheet.Button = .cancel()
//        let button2: ActionSheet.Button = .default(Text("default")) // blue
//        let button3: ActionSheet.Button = .destructive(Text("destructive")) // red
//
//        let buttons = [button1, button2, button3]
//
//        return ActionSheet(title: Text("Title"), message: Text("message"), buttons: buttons)
//    }
//}

    
    // 2 options of action sheet
    @State private var showActionSheet = false
    @State private var actionSheetOptions: ActionSheetOptions = .one
    
    enum ActionSheetOptions { case one, two }
    
    var body: some View {
        VStack {
            Button {
                actionSheetOptions = .two
                showActionSheet.toggle()
            } label: {
                Text("Press me")
            }
            .actionSheet(isPresented: $showActionSheet) {
                getActionSheet()
            }
        }
    }
    
    func getActionSheet() -> ActionSheet {
        
        let button1: ActionSheet.Button = .cancel()
        let button2: ActionSheet.Button = .default(Text("default")) // blue
        let button3: ActionSheet.Button = .destructive(Text("destructive")) // red
        
        let title = Text("Title")
        
        switch actionSheetOptions {
        case .one:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [button1, button2, button3]
            )
        case .two:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [button1, button2]
            )
        }
    }
}


struct ActionSheetsView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetsView()
    }
}
