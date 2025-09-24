//
//  MedActionDataView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 23/9/25.
//

import SwiftUI

struct MedActionDataView: View {
    @State var activity: ActivityType
    
    var body: some View {
        LazyVStack(alignment: .center, spacing: 16) {
            
            ForEach(MedicineTakenAction.allCases) { medAction in
                HStack(alignment: .center, spacing: 12) {
                    ZStack(alignment: .center) {
                        Image(medAction.icon)
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 16, height: 16)
                            .tint(medAction.forgroundColor)
                            .foregroundStyle(medAction.forgroundColor)
                    }
                    .frame(width: 36, height: 36)
                    .background(medAction.backgroundColor)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(medAction.title.localized)
                            .font(.manrope(.bold, size: 14))
                            .foregroundStyle(Color.primaryText)
                            .background(Color.clear)
                        
                        Text(medAction.title + " " + activity.title)
                            .font(.manrope(.medium, size: 12))
                            .foregroundStyle(Color.appLightText)
                            .background(Color.clear)
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    MedActionDataView(activity: .monthly)
}
