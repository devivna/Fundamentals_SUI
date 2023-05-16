//
//  OnBoardingView.swift
//  SwiftUI-Basic
//
//  Created by Надія on 14.12.2022.
//

import SwiftUI

struct OnBoardingView: View {
    
    // Onboarding  states:
    /*
     0 - welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    
    @State var onBoardingState: Int = 0
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    @State var name = ""
    @State var age: Double = 24
    @State var gender = ""
    
    @State var alertTitle = ""
    @State var showAlert = false
    
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onBoardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.black)
                }
                
            }
            
            // buttons
            VStack {
                Spacer()
                bottomButton
            }
            .padding(40)
            
        }
        .alert(isPresented: $showAlert) {
           return Alert(title: Text(alertTitle))
        }
        
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
            .background(.brown.opacity(0.45))
    }
}

// MARK: Components

extension OnBoardingView {
    private var bottomButton: some View {
        Text(onBoardingState == 0 ? "SIGN UP" : onBoardingState == 3 ? "FINISH" : "NEXT")
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .background(.brown.opacity(0.8))
            .clipShape(Capsule())
            .shadow(radius: 10)
        
            .animation(nil, value: 1)
        
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay (
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    ,alignment: .bottom
                )
            
            Spacer()
            Spacer()
        }
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Enter your name here...", text: $name)
                .font(.title)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .padding(.horizontal)
                
            Spacer()
            Spacer()
        }
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...60, step: 1.0)
            
                
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Picker("Your gender:", selection: $gender) {
                Text("Female")
                    .tag("f")
                Text("Male")
                    .tag("m")
            }
            .pickerStyle(.menu)
            
            // ! show desing
            
//            Picker(
//                selection: $gender,
//                   content: {
//                Text("Female")
//                    .tag("f")
//                Text("Male")
//                    .tag("m")
//
//            }, label:
//                    Text("Select your gender:")
 //           )
            
            Spacer()
            Spacer()
        }
        .padding(30)
        
    }
}

// MARK: Functions

extension OnBoardingView {
    
    func handleNextButtonPressed() {
     
        // check inputs
        switch onBoardingState {
        case 1:
            guard name.count >= 3 else {
                showAlertF(title: "Your name must be at least 3 characters long! ")
                return
            }
            
        case 3:
            guard gender.count > 1 else {
                showAlertF(title: "Please select a gender before moving forvard!")
                return
            }
        default:
            break
        }
        
        // go to next section
        if onBoardingState == 3 {
            // sign in
        } else {
            withAnimation(.spring()) {
                onBoardingState += 1
            }
        }
        
        func showAlertF(title: String) {
            alertTitle = title
            showAlert.toggle()
        }
        
        
    }
}
