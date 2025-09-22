//
//  DoctorNavView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 22/9/25.
//

import SwiftUI

struct DoctorsRootView: View {
    @State private var path = NavigationPath()

    var hasDoctor: Bool {
       false
   }
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                if hasDoctor {
                    DoctorListView(path: $path)
                } else {
                    EmptyDoctorView(path: $path)
                }
            }
            .navigationTitle("Doctor".localized)
            .navigationDestination(for: DoctorRoute.self) { dRoute in
                switch dRoute {
                case .add:
                    AddDoctorView(path: $path)
                case .list:
                    DoctorListView(path: $path)
                case .details(let doctor):
                    DoctorDetailsView(
                        path: $path,
                        doctor: doctor
                    )
                }
            }
        }
    }
}

#Preview {
    DoctorsRootView()
}
