//
//  YouAreAwesome.swift
//  SwiftUI-Basic
//
//  Created by Students on 28.01.2023.
//

import SwiftUI

struct YouAreAwesome: View {
    
    @State private var title = ""
    @State private var imageName = ""
    
    @State private var lastTitleNumber = -1 // impossible number : array starts from 0
    @State private var lastImageNumber = 0 //  impossible number : image starts from 1

    var body: some View {
        VStack(spacing: 30) {
           
            Text(title)
                        
            Button {
                let messages = [
                "You are Awesome",
                "You are Great",
                "You are Beautiful",
                "You are really smart"
                ]
                
                lastTitleNumber = nonRepeatingRandom(lastNumber: lastTitleNumber, upperBounds: messages.count)
                title = messages[lastTitleNumber]
                

                lastImageNumber = nonRepeatingRandom(lastNumber: lastImageNumber, upperBounds: 5)
                imageName = "p\(lastImageNumber)"
                
            } label: {
                Text("Press me")
            }
            
            Image(imageName)
                .resizable()
                .frame(width: 100, height: 100)
        }
    }
    
    func nonRepeatingRandom(lastNumber: Int, upperBounds: Int) -> Int {
        var number: Int
        repeat {
            number = Int.random(in: 1..<upperBounds)
        } while number == lastNumber
        return number
        
        // long
//        let newlastNumber = number
//        return newlastNumber
    }
}

struct YouAreAwesome_Previews: PreviewProvider {
    static var previews: some View {
        YouAreAwesome()
    }
}

/*
 
 if number == messages.count {
     number = 0
 }

 title = messages[number]
 number += 1
 imageName = "p\(number)"

 
 
 
1.19
 
 var titleNumber = Int.random(in: 0..<messages.count)

 while lastTitleNumber == titleNumber {
     titleNumber = Int.random(in: 0..<messages.count)
 }
 
 lastTitleNumber = titleNumber
 title = messages[titleNumber]

 var imageNumber: Int
 
 repeat {
     imageNumber = Int.random(in: 1..<5)
 } while imageNumber == lastImageNumber
 lastImageNumber = imageNumber
 
 imageName = "p\(imageNumber)"

 
 // long
 let newTitle = nonRepeatingRandom(lastNumber: lastTitleNumber, upperBounds: messages.count)
 title = messages[newTitle]
 
 

 
 */
