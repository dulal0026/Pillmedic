//
//  ProfilePhotoView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 21/9/25.
//

import SwiftUI

struct ProfilePhotoView: View {
    var user: User
    var body: some View {
        VStack(alignment: .center, spacing: 12) {
            ZStack(alignment: .center) {
                ZStack(alignment: .center) {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(.white)
                        .frame(width: 136, height: 136)
                    Image(.iconDoctorDummy)
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 120, height: 120)
                }
            }
            .frame(maxWidth: .infinity)
            
            VStack(alignment: .center, spacing: 2) {
                Text(user.name)
                    .font(.manrope(.bold, size: 20))
                    .foregroundStyle(Color.primaryText)
                
                if let emailAddress = user.emailAddress {
                    Text(emailAddress)
                        .font(.manrope(.regular, size: 14))
                        .foregroundStyle(Color.secondaryText)
                }
            }
            
            
        }
    }
}


#Preview {
    ProfilePhotoView(user: users[0])
}



