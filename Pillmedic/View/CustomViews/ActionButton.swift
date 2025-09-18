//
//  ActionButton.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 17/9/25.
//

import SwiftUI

struct ActionButton: View {
    
    var title: String
    var font: Font = Font.manrope(.bold, size: 15)

    var icon: ImageResource?
    
    var body: some View {
        VStack(alignment: .center) {
            VStack(alignment: .leading) {
                HStack(alignment: .center, spacing: 8) {
                    if let icon = icon {
                        Image(icon)
                            .renderingMode(.template)
                            .tint(Color.white)
                    }
                    Text(title.localized)
                        .font(font)
                        .foregroundStyle(.white)
                }
                .padding(16)
            }
            .frame(maxWidth: .infinity)
            .background(Color.appBlue)
            .clipShape(
                RoundedRectangle(cornerRadius: 12,
                                 style: .continuous)
            )
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    ActionButton(title: "Add_Doctor")
}
