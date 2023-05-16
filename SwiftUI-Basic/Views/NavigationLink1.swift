//
//  NavigationLink1.swift
//  Stack
//
//  Created by Надія on 09.11.2022.
//

import SwiftUI

// 1 struct - Dog: Identifiable (var id = UUId() + var name)
// 2 struct (1 View) - DogList -> dog.name
// 3 struct (2 View) - DogView -> Come and choose a dog
// 4 struct (main View) -> array dogs return NavigationView -> Navigation Link

struct Dog: Identifiable {
    var id = UUID()
    var name: String
}

struct FirstView: View {
    var dog: Dog
    
    var body: some View {
        Text("Dog: \(dog.name)")
    }
}

struct SecondView: View {
    var dog: Dog
    
    var body: some View {
        Text("Come and choose a \(dog.name)")
    }
}

struct NavigationLink1: View {
    var body: some View {
        
        let dog1 = Dog(name: "dog1")
        let dog2 = Dog(name: "dog2")
        let dog3 = Dog(name: "dog3")
        let dogs = [dog1, dog2, dog3]
        
        return NavigationView {
            List(dogs) { dog in
                ZStack(alignment: .leading) {
                    FirstView(dog: dog)
                    NavigationLink(destination: SecondView(dog: dog)) {
                        FirstView(dog: dog)
                    }
                    .opacity(0)
                    .navigationTitle("Choose a dog")
                }
            }
            
            
            
            /*
             @State private var path = NavigationPath()

             NavigationStack(path: $path) {
                 List(newsList) { article in
                     Button {
                         path.append(article)
                     } label: {
                         NewsCell(news: article)
                     }
                 }
                 .navigationDestination(for: Article.self) { article in
                     NewsLetterView(news: article)
                 }
             }

             
             */
            
        }
    }
}

struct NavigationLink1_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLink1()
    }
}
