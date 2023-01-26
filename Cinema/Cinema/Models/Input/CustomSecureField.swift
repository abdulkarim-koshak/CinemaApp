//
//  CustomSecureField.swift
//  MoviesApp
//
//  Created by Abdulkarim Koshak on 1/26/23.
//

import SwiftUI

struct CustomSecureField: View {
    let title: String
    
    @State private var password = ""
    @State private var showPassword = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .foregroundColor(CustomColor.blue)
            .frame(width: 350, height: 60)
            .shadow(radius: 15)
            .overlay {
                HStack {
                    if showPassword {
                        TextField(text: $password) {
                            Text(title)
                                .foregroundColor(.gray)
                        }
                        .autocorrectionDisabled()
                        .foregroundColor(.gray)
                        .font(Font.custom("Gilroy-Medium", size: 15))
                        .padding()
                    } else {
                        SecureField(text: $password) {
                            Text(title)
                                .foregroundColor(.gray)
                        }
                        .autocorrectionDisabled()
                        .foregroundColor(.gray)
                        .font(Font.custom("Gilroy-Medium", size: 15))
                        .padding()
                    }
                    
                    Button {
                        showPassword.toggle()
                    } label: {
                        Image(systemName: showPassword ? "eye.fill" : "eye.slash.fill")
                    }
                    .foregroundColor(.gray)
                    .padding()
                }
            }
    }
}
