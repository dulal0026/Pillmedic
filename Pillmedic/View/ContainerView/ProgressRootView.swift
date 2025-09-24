//
//  ProgressRootView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 22/9/25.
//

import SwiftUI

struct ProgressRootView: View {
    @State private var path = NavigationPath()

    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                ProgressView(path: $path)
            }
            .navigationTitle("Medicine".localized)
            .navigationDestination(for: ProgressRoute.self) { dRoute in
                switch dRoute {
                case .details(let medicine):
                    ProgressDetailsView(
                        path: $path,
                        activityType: .weekly,
                        medicine: medicine
                    )
                }
            }
        }
    }
}


#Preview {
    ProgressRootView()
}
