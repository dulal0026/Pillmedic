//
//  EmptyDoctorView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 17/9/25.
//

import SwiftUI

struct EmptyDoctorView: View {
    @Binding var path: NavigationPath

    var checkList: [String] = [
        "benefit1",
        "benefit2",
        "benefit3",
        "benefit4",
        "benefit5",
        "benefit6"
    ]
  
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .center, spacing: 18) {
                EmptyTopDataView(
                    icon: .doctorAvatar,
                    title: "Benefits_of_add_doctor"
                )
                CheckListView(checks: checkList)

                Button {
                    print("Add_Doctor")
                    path.append(DoctorRoute.add)
                } label: {
                    ActionButton(
                        title: "Add_Doctor",
                        font: .manrope(.bold, size: 15),
                        icon: .iconAdd
                    )
                }
                
                Button {
                    path.append(DoctorRoute.list)

                } label: {
                    PremiumView()
                }
                Spacer()
            }
            .background(.white)
            .padding(16)
        }
        .background(.clear)
        .padding(16)
    }
}


