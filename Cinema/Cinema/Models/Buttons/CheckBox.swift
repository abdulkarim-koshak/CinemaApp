//
//  CheckBox.swift
//  MoviesApp
//
//  Created by Abdulkarim Koshak on 1/26/23.
//

import SwiftUI

struct CheckBox: View {
    let text: String
    
    @State private var checked = false
    
    var body: some View {
        HStack {
            Image(systemName: checked ? "checkmark.square.fill" : "square")
                .foregroundColor(CustomColor.cooper)
                .font(.system(size: 20))
                .onTapGesture {
                    checked.toggle()
                }
            
            Text(text)
                .foregroundColor(CustomColor.white)
                .font(Font.custom("Gilroy-Medium", size: 15))
        }
    }
}
