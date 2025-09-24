//
//  MedicineRootView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 22/9/25.
//

import SwiftUI

struct MedicineRootView: View {
    @State private var path = NavigationPath()

    var hasFamily: Bool {
       false
   }
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                EmptyMedicineView(path: $path)
            }
            .navigationTitle("".localized)
            .navigationDestination(for: MedicineRoute.self) { dRoute in
                switch dRoute {
                case .add:
                    AddMedicineView(path: $path)
                case .addSchedule:
                    SetScheduleView(
                        path: $path,
                        mealNote: .notSpecific)
                case .details(let medicine):
                    MedicineDetailsView(
                        path: $path,
                        medicine: medicine)
                case .edit(let medicine):
                    MedicineEditView(
                        path: $path,
                        medicine: medicine,
                        mealNote: MealNote.notSpecific
                    )
                }
            }
        }
    }
}

#Preview {
    MedicineRootView()
}
