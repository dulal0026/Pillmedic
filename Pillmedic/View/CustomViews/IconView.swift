//
//  IconView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 21/9/25.
//

import SwiftUI

struct RectIconView: View {
    var icon: ImageResource
    var forgroundColor: Color = .black
    var backgroundColor: Color = .green
    var iconSize: CGSize = .init(width: 16, height: 16)
    var padding: CGFloat = 16
    var spacing: CGFloat = 0

    var body: some View {
        HStack {
            VStack(alignment: .center) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(backgroundColor)
                    .frame(width: iconSize.width + padding, height: iconSize.height + padding)
            }
            .overlay(alignment: .center) {
                Image(icon)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(forgroundColor)
                    .frame(width: iconSize.width, height: iconSize.height)
            }
        }
        .padding(spacing)
      
    }
}

#Preview {
    RectIconView(icon: .iconEdit)
}


