//
//  LogInView.swift
//  MoviesApp
//
//  Created by Abdulkarim Koshak on 1/25/23.
//

import SwiftUI

struct LogInView: View {
    var body: some View {
        ZStack {
            CustomColor.black
                .ignoresSafeArea(.all)
            
            Image("movie_posters")
                .resizable()
                .scaledToFit()
                .mask {
                    LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .bottom, endPoint: .top)
                }
                .shadow(radius: 15)
                .offset(x: 0, y: -250)
            
            VStack {
                Text("Welcome back!")
                    .foregroundColor(CustomColor.white)
                    .font(Font.custom("Gilroy-SemiBold", size: 26))
                    .offset(x: -80, y: -110)
                    .shadow(radius: 15)
                
                Text("Welcome back! Please, enter your details.")
                    .foregroundColor(CustomColor.white)
                    .font(Font.custom("Gilroy-SemiBold", size: 16))
                    .offset(x: -20, y: -95)
                    .shadow(radius: 15)
                
                GoogleButton(actionLabel: "Log in with")
                    .offset(x: 0, y: -75)
                
                HStack(spacing: 15.0) {
                    Rectangle()
                        .foregroundColor(CustomColor.blue)
                        .frame(width: 150, height: 2)
                    
                    Text("Or")
                        .foregroundColor(CustomColor.white)
                        .font(Font.custom("Gilroy-SemiBold", size: 14))
                    
                    Rectangle()
                        .foregroundColor(CustomColor.blue)
                        .frame(width: 150, height: 2)
                }
                .offset(x: 0, y: -50)
                
                VStack(spacing: 10.0) {
                    CustomTextField(label: "Username")
                    
                    CustomSecureField(title: "Password")
                    
                    HStack(spacing: 100.0) {
                        CheckBox(text: "Remember me")
                        
                        Button("Forgot password") {
                            
                        }
                        .foregroundColor(CustomColor.white)
                        .font(Font.custom("Gilroy-Medium", size: 15))
                    }
                }
                .offset(x: 0, y: -25)
                
                VStack(spacing: 40.0) {
                    CustomButton(actionLabel: "Log In")
                    
                    HStack {
                        Text("Not a member?")
                            .foregroundColor(.gray)
                            .font(Font.custom("Gilroy-SemiBold", size: 15))
                        
                        NavigationLink(destination: SignUpView().navigationBarBackButtonHidden(true)) {
                            Text("Sign Up")
                                .foregroundColor(CustomColor.white)
                                .font(Font.custom("Gilroy-Bold", size: 15))
                        }
                    }
                }
                .padding(.top, 25)
                
            }
            .offset(x: 0, y: 175)
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
