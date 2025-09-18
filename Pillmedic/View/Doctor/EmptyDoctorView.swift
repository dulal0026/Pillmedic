//
//  EmptyDoctorView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 17/9/25.
//

import SwiftUI

struct EmptyDoctorView: View {
    
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
            VStack(alignment: .center, spacing: 20) {
                EmptyTopDataView(
                    icon: .doctorAvatar,
                    title: "Benefits_of_add_doctor"
                )
                CheckListView(checks: checkList)

                Button {
                    print("Add_Doctor")
                } label: {
                    ActionButton(
                        title: "Add_Doctor",
                        font: .manrope(.bold, size: 15),
                        icon: .iconAdd
                    )
                }
                
                Button {
                    print("Add Doctor")
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

#Preview {
    EmptyDoctorView()
}
