//
//  CustomTextField.swift
//  MoviesApp
//
//  Created by Abdulkarim Koshak on 1/25/23.
//

import SwiftUI

struct CustomTextField: View {
    
    let label: String
    
    @State var text: String = ""
    
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .foregroundColor(CustomColor.blue)
            .frame(width: 350, height: 60)
            .overlay {
                TextField(text: $text) {
                    Text(label)
                        .font(Font.custom("Gilroy-Medium", size: 15))
                        .foregroundColor(.gray)
                }
                .textInputAutocapitalization(.never)
                .foregroundColor(.gray)
                .padding()
            }
            .shadow(radius: 15)
    }
}
