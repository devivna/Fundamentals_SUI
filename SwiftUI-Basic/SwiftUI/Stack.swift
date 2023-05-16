
// !! all view = struct
// some View = 1 view -> don't 2 Text() w/t V/H/ZStack
//Divider() -> розділяюча лінія на весь екран
// Spacer().frame(height: 10)

import SwiftUI

struct Stack: View {
    var body: some View {
        
        // zero spacing between two elements
        // by default = 8
        
//        HStack(spacing: 0) {
//            Rectangle()
//                .frame(width: 50, height: 50)
//                .foregroundColor(.red)
//            Rectangle()
//                .frame(width: 50, height: 50)
//                .foregroundColor(.orange)
//        }
        
        // Stack + background
        
//        HStack(spacing: 10) {
//            Rectangle()
//                .frame(width: 50, height: 50)
//                .foregroundColor(.red)
//            Rectangle()
//                .frame(width: 50, height: 50)
//                .foregroundColor(.orange)
//        }
//        .background(.yellow)

        
        // Spacer
        
        VStack {
            HStack {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            Spacer()
        }
        .font(.largeTitle)
        .padding(.horizontal, 10)
    
    
    
        
        
//        VStack {
//            Spacer ()
//            HStack (alignment: .bottom) {
//                Spacer()
//
//                Rectangle()
//                    .frame(width: 80, height: 80)
//                    .background(.red)
//
//                Spacer()
//
//                Rectangle()
//                    .frame(width: 80, height: 80)
//                    .background(.green)
//
//                Spacer()
//
//                Rectangle()
//                    .frame(width: 80, height: 80)
//                    .background(.yellow)
//
//                Spacer()
//            }
//            .padding(.horizontal, 50)
//        }
//
    }
}

struct Stack_Previews: PreviewProvider {
    static var previews: some View {
        Stack()
    }
}

