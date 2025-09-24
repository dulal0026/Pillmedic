//
//  InsightsView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 20/9/25.
//

import SwiftUI

struct InsightsView: View {
    var body: some View {
        VStack(alignment: .leading) {
              
            VStack(alignment: .leading, spacing: 16) {
                
                HStack(alignment: .center) {
                    Text("Insights".localized)
                        .foregroundStyle(Color.white)
                        .font(.manrope(.bold, size: 20))
                    Spacer()
                }
                
                HStack(alignment: .center, spacing: 10) {
                    
                    CirclesView()
                    
                    Text("Insights_details".localized)
                        .font(.manrope(.medium, size: 14))
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.leading)
                }
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 22)

            .background(Color.clear)
        }
        .padding(.horizontal, 0)
        .frame(maxWidth: .infinity)
        .background(
            LinearGradient(colors: [.deepBlue, .lightPurple], startPoint: .leading, endPoint: .trailing)
        )
        .clipShape(
            RoundedRectangle(cornerRadius: 16)
        )
    }
}

struct CirclesView: View {
    var body: some View {
        ZStack(alignment: .center) {
            Circle()
                .stroke(Color.white, lineWidth: 3)
                .frame(width: 22, height: 22)
            
            Circle()
                .stroke(Color.white, lineWidth: 3)
                .frame(width: 14, height: 14)
            
            Circle()
                .stroke(Color.white, lineWidth: 3)
                .frame(width: 6, height: 8)
        }
    }
}

/*
#Preview {
    InsightsView()
}
*/






