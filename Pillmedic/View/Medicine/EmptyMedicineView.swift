//
//  EmptyMedicineView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 17/9/25.
//

import SwiftUI

struct EmptyMedicineView: View {
    
    var checkList: [MedicineCheckList] = [
        .init(icon: .medicineCheckList1, title: "benefit_medicine_1"),
        .init(icon: .medicineCheckList2, title: "benefit_medicine_2"),
        .init(icon: .medicineCheckList3, title: "benefit_medicine_3")
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .center, spacing: 20) {
              
                EmptyTopDataView(
                    icon: .medicineAvatar,
                    title: "Benefits_of_add_medicine"
                )
          
                MedicineCheckView(checks: checkList)
                
                Button {
                    print("Add Family Member")
                } label: {
                    ActionButton(
                        title: "Add_Medicine",
                        font: .manrope(.bold, size: 15),
                        icon: .iconAdd
                    )
                }
                
                Button {
                    print("Add Premium")
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
    EmptyMedicineView()
}

