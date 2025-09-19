//
//  AddMedicineView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 17/9/25.
//

import SwiftUI

struct AddMedicineView: View {
    
    @State var medicineName: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .bottomTrailing) {
                Image(.medicineAvatar)
                Image(.iconCamera)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .background(.clear)

            Text("Medicine_Name".localized)
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.manrope(.bold, size: 24))
                .foregroundStyle(Color.primaryText)
            
            TextField("Enter_medicine_name".localized, text: $medicineName)
                .padding()
                .background(Color.white)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.textBorder, lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom, 20)

            Button {
                print("Add medicine")
            } label: {
                ActionButton(
                    title: "Next",
                    font: .manrope(.bold, size: 18)
                )
            }
            Spacer()
        }
        .padding(.horizontal, 16)
        .background(.clear)
    }
}

#Preview {
    AddMedicineView(medicineName: "NAPA")
}


