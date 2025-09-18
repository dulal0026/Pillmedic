//
//  PremiumView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 17/9/25.
//

import SwiftUI

struct PremiumView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            HStack(alignment: .top) {
                Image(.iconPremium)
                    .renderingMode(.original)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Upgrade to Premium")
                        .foregroundStyle(Color.white)
                        .font(.manrope(.bold, size: 20))
                    Text("You're on the free plan. Upgrade to premium for full access.")
                        .font(.manrope(size: 12))
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.leading)
                }
                Image(.iconArrowRight)
                    .renderingMode(.template)
                    .tint(Color.white)
                    .foregroundStyle(Color.white)
            }
            .background(Color.clear)
        }
        .padding(16)
        .background(
            LinearGradient(colors: [.lightPink, .lightOrance], startPoint: .leading, endPoint: .trailing)
        )
        .clipShape(
            RoundedRectangle(cornerRadius: 16,
                             style: .continuous)
        )
    }
}

#Preview {
    PremiumView()
}


