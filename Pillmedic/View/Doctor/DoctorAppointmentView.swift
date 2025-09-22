//
//  DoctorAppointmentView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 18/9/25.
//

import SwiftUI

struct DoctorAppointmentView: View {
    
    var icon: ImageResource = .iconCallendar
    var value: String = "12 Jul 2025, 03:30 PM "

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center, spacing: 8) {
                Image(icon)
                    .resizable()
                    .frame(width: 24)
                    .frame(height: 24)
                
                VStack(alignment: .leading, spacing: 2) {
                  
                    Text("Next_Appointment")
                        .foregroundStyle(Color.appLightText)
                        .font(.manrope(.regular, size: 12))
                    
                    Text(value)
                        .foregroundStyle(Color.secondaryText)
                        .font(.manrope(.bold, size: 16))
                }
            }
            .background(.clear)
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 16)
        .background(.clear)
    }
}


struct DoctorInfoItemView: View {
    
    var icon: ImageResource = .iconDoctorDummy
    var doctor: Doctor

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center, spacing: 8) {
                Image(icon)
                    .resizable()
                    .frame(width: 56)
                    .frame(height: 56)
                
                VStack(alignment: .leading, spacing: 2) {
                  
                    Text(doctor.name)
                        .foregroundStyle(Color.secondaryText)
                        .font(.manrope(.bold, size: 16))
                    
                    Text(doctor.speciality)
                        .foregroundStyle(Color.appLightText)
                        .font(.manrope(.regular, size: 14))
                }
                Spacer()
                Image(.iconEdit)
                    .resizable()
                    .frame(width: 20)
                    .frame(height: 20)
            }
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
        .background(.clear)
    }
}

#Preview {
    DoctorAppointmentView()
}
