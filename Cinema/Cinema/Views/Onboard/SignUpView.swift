//
//  LogInView.swift
//  MoviesApp
//
//  Created by Abdulkarim Koshak on 1/25/23.
//

import SwiftUI

struct SignUpView: View {
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
                Text("Sign Up")
                    .foregroundColor(CustomColor.white)
                    .font(Font.custom("Gilroy-SemiBold", size: 26))
                    .offset(x: -125, y: -195)
                    .shadow(radius: 15)
                
                Text("Please, enter details about your profile.")
                    .foregroundColor(CustomColor.white)
                    .font(Font.custom("Gilroy-SemiBold", size: 16))
                    .offset(x: -28, y: -185)
                    .shadow(radius: 15)
                
                GoogleButton(actionLabel: "Log in with")
                    .offset(x: 0, y: -165)
                
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
                .offset(x: 0, y: -150)
            }
            
            VStack(spacing: 10.0) {
                CustomTextField(label: "Username")
                
                CustomTextField(label: "Email")
                
                CustomSecureField(title: "Password")
                
                CustomSecureField(title: "Confirm Password")
            }
            .offset(x: 0, y: 70)
            
            VStack(spacing: 55.0) {
                CustomButton(actionLabel: "Sign Up")
                
                HStack {
                    Text("Already a member?")
                        .foregroundColor(.gray)
                        .font(Font.custom("Gilroy-SemiBold", size: 15))
                    
                    NavigationLink(destination: LogInView().navigationBarBackButtonHidden(true)) {
                        Text("Log In")
                            .foregroundColor(CustomColor.white)
                            .font(Font.custom("Gilroy-Bold", size: 15))
                    }
                }
            }
            .offset(x: 0, y: 325)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
