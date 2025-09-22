//
//  DoctorListView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 18/9/25.
//

import SwiftUI

struct DoctorListView: View {
    @Binding var path: NavigationPath

    var doctors: [Doctor] =  Doctor.dummyDoctors
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
           
            ScrollView(.vertical) {
                LazyVStack(alignment: .leading, spacing: 12) {
                    
                    ForEach(doctors) { doctor in
                        DoctorListItemView(path: $path, doctor: doctor)
                    }
                }
            }
            VStack(alignment: .leading) {
                Button {
                    print("Add another doctor")
                    path.append(DoctorRoute.add)
                } label: {
                    
                    HStack(alignment: .top, spacing: 12) {
                        Image(.iconAdd)
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 20)
                            .frame(height: 20)
                            .tint(Color.appBlue)
                        
                        Text("Add Another Doctor")
                            .foregroundStyle(Color.primaryText)
                            .font(.manrope(.bold, size: 14))
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 8)
                    .background(.clear)
                }
            }
            .padding(.horizontal, 16)
            .background(.clear)

            Spacer()
        }
        .navigationTitle("Doctor".localized)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                ToolBarBackButton(path: $path)
            }
        }
    }
}
/*
#Preview {
    DoctorListView(path: .constant(DoctorRoute))
}
*/
struct DoctorListItemView: View {
    @Binding var path: NavigationPath

    var doctor: Doctor
    
    var icon: ImageResource = .iconDoctorDummy

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
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
                }
            
                Spacer()
                Button {
                    print("Call action")
                } label: {
                    Image(.iconCall)
                        .resizable()
                        .frame(width: 20)
                        .frame(height: 20)
                        .tint(Color.appBlue)
                }
            }
            .onTapGesture {
                path.append(DoctorRoute.details(doctor))
            }
            .padding(8)
            .background(.clear)
            
            DoctorAppointmentItemView()
            
        }
        .padding(.horizontal, 16)
        .background(.clear)
    }
}

struct DoctorAppointmentItemView: View {
    
    var icon: ImageResource = .iconCallendar
    var value: String = "12 Jul 2025, 03:30 PM "

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center, spacing: 12) {
                Image(icon)
                    .resizable()
                    .frame(width: 24)
                    .frame(height: 24)
                    .padding(8)
                
                VStack(alignment: .leading, spacing: 2) {
                  
                    Text("Next Appointment")
                        .foregroundStyle(Color.appLightText)
                        .font(.manrope(.regular, size: 12))
                    
                    Text(value)
                        .foregroundStyle(Color.secondaryText)
                        .font(.manrope(.bold, size: 16))
                }
                
                Spacer()
                
                Image(.iconArrowRightCurve)
                    .resizable()
                    .frame(width: 24)
                    .frame(height: 24)
            
            }
            .padding(.horizontal, 8)
            .padding(.bottom, 8)
        }
        .background(.clear)
    }
}
