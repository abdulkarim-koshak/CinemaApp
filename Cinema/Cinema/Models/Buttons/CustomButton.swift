//
//  CustomButton.swift
//  MoviesApp
//
//  Created by Abdulkarim Koshak on 1/26/23.
//

import SwiftUI

struct CustomButton: View {
    let actionLabel: String
    
    var body: some View {
        Button {
            
        } label: {
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(CustomColor.cooper)
                .frame(width: 350, height: 60)
                .shadow(radius: 15)
                .overlay {
                    Text(actionLabel)
                        .foregroundColor(CustomColor.white)
                        .font(Font.custom("Gilroy-Bold", size: 16))
                }
        }
    }
}

