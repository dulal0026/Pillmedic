//
//  BorderText.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 20/9/25.
//

import SwiftUI


struct BorderTextProperty {
    var text: String
    var textColor: Color
    var borderColor: Color
    var radius: CGFloat
    var backgroundColor: Color
    var font: Font
    
    init(
        text: String = "English",
        textColor: Color = Color.black,
        borderColor: Color = Color.black,
        radius: CGFloat = 8,
        backgroundColor: Color = Color.clear,
        font: Font = Font.manrope(.regular, size: 14)
    ) {
        self.text = text
        self.textColor = textColor
        self.borderColor = borderColor
        self.radius = radius
        self.backgroundColor = backgroundColor
        self.font = font
    }
}

struct BorderText: View {
  
    var property: BorderTextProperty =  BorderTextProperty()
    
    var body: some View {
        
        HStack(alignment: .center) {
              
            Text(property.text.localized)
                .font(property.font)
                .foregroundStyle(property.textColor)
                .background(.clear)
                .padding(.horizontal)
                .padding(.vertical, 4)
        }
        .background(property.backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .overlay(
            RoundedRectangle(cornerRadius: property.radius)
                .stroke(property.borderColor, lineWidth: 1)
        )
    }
}


#Preview {
    BorderText(
        property: BorderTextProperty(
            text: "Engish",
            textColor: Color.appBlue,
            borderColor: Color.appBlue,
            radius: 12,
            backgroundColor: .clear,
            font: .manrope(.bold, size: 20)
        )
    )
}

