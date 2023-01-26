//
//  GoogleButton.swift
//  Cinema
//
//  Created by Abdulkarim Koshak on 1/25/23.
//

import SwiftUI

struct GoogleButton: View {
    
    let actionLabel: String
    
    var body: some View {
        Button {
            
        } label: {
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(CustomColor.blue)
                .frame(width: 350, height: 60)
                .overlay {
                    HStack(spacing: 6.0) {
                        Image("google_icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .padding(.horizontal, 5)
                        
                        Text(actionLabel)
                            .foregroundColor(CustomColor.white)
                            .font(.system(size: 15))
                        
                        Text("Google")
                            .fontWeight(.bold)
                            .foregroundColor(CustomColor.white)
                            .font(.system(size: 15))
                    }
                }
                .shadow(radius: 15)
        }
    }
}
