//
//  Initializer.swift
//  Stack
//
//  Created by Надія on 03.11.2022.
//

import SwiftUI

struct Initializer: View {
    
    var count: Int
    var fruit: String
    var background: Color

    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apples {
            self.fruit = "Apples"
            self.background = .green
            
        } else if fruit == .bananas {
            self.fruit = "Bananas"
            self.background = .yellow
        } else if fruit == .oranges {
            self.fruit = "Oranges"
            self.background = .orange
        } else {
            self.fruit = "Strawberries"
            self.background = .red
        }
    }

    enum Fruit {
        case apples, oranges, bananas, strawberries
    }


    var body: some View {

        VStack (spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text("\(fruit)")
                .bold()
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(background)
        .cornerRadius(10)
        
    }
}

struct Initializer_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Initializer(count: 1, fruit: .bananas)
        }
        
    }
}
