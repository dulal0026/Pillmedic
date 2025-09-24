//
//  ActivitySegmentView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 23/9/25.
//

import SwiftUI

struct ActivitySegmentView: View {
    
    @Binding var activityType: ActivityType
    
    var body: some View {
        LazyHStack(alignment: .center, spacing: 8) {
            
            ForEach(ActivityType.allCases) { activity in
                Button {
                    activityType = activity
                } label: {
                    Text(activity.title)
                        .padding(.vertical, 8)
                        .padding(.horizontal,12)
                        .font(.manrope(.semiBold, size: 16))
                        .foregroundStyle(activity == activityType ? Color.white : Color.primaryText)
                        .background(activity == activityType ? Color.appBlue : Color.clear)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
        }
    }
}

#Preview {
    ActivitySegmentView(activityType: .constant(ActivityType.monthly))
}
