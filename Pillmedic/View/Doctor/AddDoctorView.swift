//
//  AddDoctorView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 17/9/25.
//

import SwiftUI

struct AddDoctorView: View {
    
    @State var doctorName: String = ""
    @State var medicalName: String = ""
    @State var mobileNumber: String = ""
    @State var speciality: String = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            VStack(alignment: .leading) {
                HStack(alignment: .center) {
                    Image(.doctorAvatar)
                        .resizable()
                        .frame(width: 120, height: 120, alignment: .center)
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 20)
                .padding(.bottom, 30)
               
                Text("Doctor_Name".localized)
                    .font(.manrope(.semiBold, size: 14))
                    .foregroundStyle(Color.primaryText)
                
                TextField("Dr. Kamrul Hasan", text: $doctorName)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.textBorder, lineWidth: 1)
                    )
                
                Text("Speciality".localized)
                    .font(.manrope(.semiBold, size: 14))
                    .foregroundStyle(Color.primaryText)
                
                TextField("Dr. Kamrul Hasan", text: $doctorName)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.textBorder, lineWidth: 1)
                    )
           
                Text("Hospital/Clinic".localized)
                    .font(.manrope(.semiBold, size: 14))
                    .foregroundStyle(Color.primaryText)
                
                TextField("Dr. Kamrul Hasan", text: $doctorName)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.textBorder, lineWidth: 1)
                    )
                
                Text("Phone_Number")
                    .font(.manrope(.semiBold, size: 14))
                    .foregroundStyle(Color.primaryText)
                
                TextField("Dr. Kamrul Hasan", text: $doctorName)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.textBorder, lineWidth: 1)
                    )
                       
                Text("Next_Appointment_Optional".localized)
                    .font(.manrope(.semiBold, size: 14))
                    .foregroundStyle(Color.primaryText)
                
                TextField("Dr. Kamrul Hasan", text: $doctorName)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.textBorder, lineWidth: 1)
                    )
            }
            .padding(.horizontal, 16)
            
            Button {
                print("Add Action")
            } label: {
                ActionButton(title: "Add")
            }
        }
        .padding(.top, 24)
    }
}

#Preview {
    AddDoctorView()
}
