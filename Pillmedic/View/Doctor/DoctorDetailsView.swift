//
//  DoctorDetailsView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 17/9/25.
//

import SwiftUI

struct DoctorDetailsView: View {
    
    var doctor: Doctor
    
    var body: some View {
        VStack(alignment: .leading) {
            
            DoctorInfoItemView(doctor: doctor)
            DoctorAppointmentView()
            
            DoctorItemView(
                icon: .iconHospital,
                title: doctor.medicalCollege
            )
            
            DoctorItemView(
                icon: .iconPhone,
                title: doctor.mobileNumber
            )
              
            Button {
                print("Call action")
            } label: {
                ActionButton(
                    title: "Call_Doctor",
                    icon: .iconCall
                )
            }
            .padding(.top, 16)
            Spacer()
        }
        .padding(.horizontal,16)
        .padding(.top, 24)
    }
}

struct DoctorItemView: View {
    
    var icon: ImageResource
    var title: String

    var body: some View {
        HStack(alignment: .center) {
            Image(icon)
                .resizable()
                .frame(width: 24)
                .frame(height: 24)
            Text(title)
                .foregroundStyle(Color.secondaryText)
                .font(.manrope(.semiBold, size: 14))
        }
        .padding(.top, 12)
        .padding(.horizontal, 16)
    }
}

#Preview {
    DoctorDetailsView(doctor: Doctor.dummyDoctors[0])
}
