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
              
            VStack(alignment: .leading, spacing: 20) {
                
                Text("Insights".localized)
                    .foregroundStyle(Color.white)
                    .font(.manrope(.bold, size: 20))
                
                HStack(alignment: .top, spacing: 10) {
                    
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
        .padding(.horizontal, 16)
        .background(
            LinearGradient(colors: [.deepBlue, .lightPurple], startPoint: .leading, endPoint: .trailing)
        )
        .clipShape(
            RoundedRectangle(cornerRadius: 16,
                             style: .continuous)
        )
    }
}
/*
#Preview {
    InsightsView()
}
*/






