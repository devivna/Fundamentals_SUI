//
//  RegistrationView.swift
//  Stack
//
//  Created by Надія on 10.11.2022.
//

import SwiftUI

struct RegistrationView: View {
    
    @State var index = 0
    
    var body: some View {
        GeometryReader { _ in
            VStack(alignment: .center) {
                
                Spacer()
                
                Image(systemName: "person")
                    .font(.largeTitle)
                    .foregroundColor(.mint)
                    .saturation(0.3)
                
                                
                ZStack {
                    
                    SignUP(index: $index)
                        .zIndex(Double(index))
                    Login(index: $index)
                }
                
                HStack(spacing: 15) {
                    
                    RectangleView()
                    Text("OR")
                    RectangleView()
                    
                }
                .padding(.horizontal, 30)
                .padding(.top, 50)
                
                HStack(spacing: 5) {
                    IconView(image: "iphone.homebutton")
                    IconView(image: "applewatch.watchface")
                    IconView(image: "desktopcomputer")
                }
                .padding(.top, 30)
                
                Spacer()
                
            }
            //.padding(.vertical)
        }
        .background(.black)
        .saturation(0.5)
        .preferredColorScheme(ColorScheme.dark)
    }
}

struct IconView: View {
    var image: String
    
    var body: some View {
       
        Button {
            //
        } label: {
            Image(systemName: "\(image)")
                .font(.largeTitle)
                .padding()
                .background(.gray)
                .clipShape(Circle())
                .foregroundColor(.black)
        }
    }
}

struct RectangleView: View {
    
    var body: some View {
        Rectangle()
            .fill(.gray)
            .frame(height: 2)
    }
}

struct CShapeLeft: Shape {
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: CGPoint(x: rect.width, y: 100))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: 0))
            
        }
    }
}

struct CShapeRight: Shape {
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: CGPoint(x: 0, y: 100))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            
        }
    }
}

struct Login: View {
    @State var email = ""
    @State var pass = ""
    @Binding var index: Int
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    VStack(spacing: 10){
                        Text("Login")
                            .foregroundColor(index == 0 ? .white : .gray)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Capsule()
                            .fill(index == 0 ? .blue : .clear)
                            .frame(width: 100, height: 5)
                    }
                    
                    Spacer()
                }
                .padding(.top, 30)
                
                VStack {
                    HStack {
                        Image(systemName: "envelop.fill")
                            .foregroundColor(.gray)
                        TextField("Email Adress", text: $email)
                    }
                    
                    Divider()
                        .background(.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack {
                    HStack {
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(.gray)
                        SecureField("Password", text: $pass)
                    }
                    
                    Divider()
                        .background(.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                HStack {
                    Spacer(minLength: 0)
                    
                    Button {
                        //
                    } label: {
                        Text("Forget password?")
                            .foregroundColor(.white.opacity(0.6))
                    }
                }
                .padding(.horizontal)
                .padding(.top, 30)
            }
            .padding()
            .padding(.bottom, 65)
            .background(.mint)
            .clipShape(CShapeLeft())
            .contentShape(CShapeLeft())
            .shadow(radius: 5, x: 0, y: -5)
            .onTapGesture {
                index = 0
            }
            .cornerRadius(35)
            .padding(.horizontal, 20)
            
            
            Button {
                //
            } label: {
                Text("Login")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(.red)
                    .clipShape(Capsule())
                    .shadow(
                        color: .white.opacity(0.1),
                        radius: 5,
                        x: 0,
                        y: 5
                    )
                    .offset(y: 185)
                    .opacity(index == 0 ? 1 : 0)
            }
        }
    }
}

struct SignUP: View {
    @State var email = ""
    @State var pass = ""
    @State var Repass = ""
    @Binding var index: Int
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    Spacer(minLength: 0)
                    
                    VStack(spacing: 0) {
                        Text("SignUp")
                            .foregroundColor(index == 1 ? .white : .gray)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Capsule()
                            .fill(index == 1 ? .blue : .clear)
                            .frame(width: 100, height: 5)
                    }
                }
                .padding(.top, 30)
                
                VStack {
                    
                    HStack(spacing: 15) {
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.yellow)
                        TextField("Email adredd", text: $email)
                    }
                    
                    Divider()
                        .background(.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                VStack {
                    
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(.yellow)
                        SecureField("Password", text: $pass)
                    }
                    
                    Divider()
                        .background(.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(.yellow)
                        SecureField("Password", text: $Repass)
                    }
                    
                    Divider()
                        .background(.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
            }
            .padding(.bottom, 65)
            .background(.cyan)
            .clipShape(CShapeRight())
            .contentShape(CShapeRight())
            .shadow(
                color: .black.opacity(0.3),
                radius: 5,
                x: 0, y: -5
            )
            .onTapGesture {
                index = 1
            }
            .cornerRadius(35)
            
            Button {
                //
            } label: {
                Text("SignUP")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(.red)
                    .clipShape(Capsule())
                    .shadow(color: .white.opacity(0.1),
                            radius: 5,
                            x:0, y: -5 )
            }
            .offset(y: 25)
            .opacity(index == 1 ? 1 : 0)

        }
    }
}


struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
