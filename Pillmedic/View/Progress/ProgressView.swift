//
//  ProgressView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 17/9/25.
//

import SwiftUI

struct ProgressView: View {
    @Binding var path: NavigationPath
    
    @State var activityType: ActivityType = .weekly
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
           
            ScrollView(.vertical) {
                
                LazyVStack(alignment: .leading, spacing: 12) {
                    
                    ForEach(medicines) { medicine in
                        ProgressItemView(
                            path: $path,
                            medicine: medicine
                        )
                    }
                }
                
                VStack(alignment: .leading, spacing: 16) {
                    
                    ActivityTitleView()
                    ActivitySegmentView(activityType: $activityType)
                    MedActionDataView(activity: activityType)
                
                    Button {
                        print("Insight")
                    } label: {
                        InsightsView()
                    }
                }
                .padding(.horizontal, 32)
                .frame(maxWidth: .infinity)
                .background(Color.clear)
                
            }
            Spacer()
        }
        .navigationTitle("Medicine".localized)
    }
}

#Preview {
    ProgressView(
        path: .constant(NavigationPath())
    )
}


struct ActivityTitleView: View {
    var body: some View {
        HStack(alignment: .center) {
            Text("Activity".localized)
                .font(.manrope(.bold, size: 20))
                .foregroundStyle(Color.primaryText)
            Spacer()
        }
        .padding(.horizontal, 0)
    }
}
