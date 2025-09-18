//
//  Extensions.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 17/9/25.
//

import SwiftUI

enum FontWeight: String {
    case regular = "Regular"
    case medium = "Medium"
    case semiBold = "SemiBold"
    case bold = "Bold"
    case extraBold = "ExtraBold"
    case light = "Light"
    case extraLight = "ExtraLight"
}

extension Font {
    static func manrope(_ weight: FontWeight = .regular, size: CGFloat) -> Font {
        Font.custom(
            "Manrope-\(weight.rawValue)",
            size: size
        )
    }
}

extension String {
    var localized: LocalizedStringKey {
        LocalizedStringKey(self)
    }
}

struct LocalizedText: View {
    let key: String
    
    var body: some View {
        Text(LocalizedStringKey(key))
    }
}
