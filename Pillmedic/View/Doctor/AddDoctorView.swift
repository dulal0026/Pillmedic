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

    fileprivate func specialityView() -> some View {
        return HStack(alignment: .center, spacing: 2) {
            Text("Cardiology, orthopedic, etc.")
                .font(.manrope(size: 14))
                .foregroundStyle(Color.placeHolder)
            
            Spacer()
            
            Image(.iconArrowDownCurve)
                .resizable()
                .renderingMode(.template)
                .scaledToFit()
                .frame(width: 24, height: 24)
                .tint(Color.secondaryText)
                .foregroundStyle(Color.secondaryText)
            
        }
        .padding()
        .cornerRadius(12)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.textBorder, lineWidth: 1)
        )
    }
    
    fileprivate func appointmentView() -> some View {
        return HStack(alignment: .center, spacing: 2) {
            
            Button {
                print("Data selection")
            } label: {
                HStack(alignment: .center, spacing: 4) {
                    Image(.iconDay)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 24, height: 24)
                        .tint(Color.secondaryText)
                    
                    Text("dd/mm/yyyy")
                        .font(.manrope(size: 14))
                        .foregroundStyle(Color.placeHolder)
                }
            }
          
            
            Spacer()
            
            Rectangle()
                .frame(width: 2, height: 30)
                .foregroundStyle(Color.secondaryText)
            
            Spacer()
            
            Button {
                print("Time selection")
            } label: {
                HStack(alignment: .center, spacing: 4) {
                    Image(.iconTime)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 24, height: 24)
                        .tint(Color.secondaryText)
                    
                    Text("12:00 AM")
                        .font(.manrope(size: 14))
                        .foregroundStyle(Color.placeHolder)
                }
            }
           
        }
        .padding()
        .cornerRadius(12)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.textBorder, lineWidth: 1)
        )
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            VStack(alignment: .leading, spacing: 12) {
                HStack(alignment: .center) {
                    Image(.doctorAvatar)
                        .resizable()
                        .frame(width: 120, height: 120, alignment: .center)
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 0)
                .padding(.bottom, 20)
               
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
                
                Button {
                    print("Select Speciality")
                } label: {
                    specialityView()
                }
           
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
                
                HStack(alignment: .center, spacing: 2) {
                    Text("+880")
                        .font(.manrope(size: 14))
                        .foregroundStyle(Color.placeHolder)
                  
                    TextField("", text: $mobileNumber)
                        .background(Color.white)
                        .keyboardType(.phonePad)
                }
                .padding()
                .cornerRadius(12)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.textBorder, lineWidth: 1)
                )
                       
                Text("Next_Appointment_Optional".localized)
                    .font(.manrope(.semiBold, size: 14))
                    .foregroundStyle(Color.primaryText)
                
                appointmentView()
            }
            .padding(.horizontal, 16)
            
            Button {
                print("Add Action")
            } label: {
                ActionButton(title: "Add")
            }
        }
        .padding(.top, 20)
    }
}

#Preview {
    AddDoctorView()
}



