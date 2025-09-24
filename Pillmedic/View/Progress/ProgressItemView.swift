//
//  ProgressItemView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 23/9/25.
//

import SwiftUI

struct ProgressItemView: View {
    @Binding var path: NavigationPath

    var medicine: Medicine
    
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
                      
                        Text(medicine.name)
                            .foregroundStyle(Color.secondaryText)
                            .font(.manrope(.bold, size: 16))
                        
                        Text(medicine.takingInterval)
                            .foregroundStyle(Color.appLightText)
                            .font(.manrope(.regular, size: 14))
                    }
                }
            
                Spacer()
                Image(.iconArrowRightCurve)
                    .resizable()
                    .frame(width: 20)
                    .frame(height: 20)
                    .tint(Color.black)
            }
            .onTapGesture {
                path.append(ProgressRoute.details(medicine))
            }
            .padding(8)
            .background(.clear)
        }
        .padding(.horizontal, 16)
        .background(.clear)
    }
}


#Preview {
    ProgressItemView(
        path: .constant(NavigationPath()),
        medicine: medicines[0]
    )
}
