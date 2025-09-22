//
//  ProfilePhotoInputView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 21/9/25.
//

import SwiftUI

struct ProfilePhotoInputView: View {
   
    var user: User
    var body: some View {
        VStack(alignment: .center, spacing: 12) {
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
        .overlay(alignment: .bottom) {
            Image(.iconCamera)
                .padding(.bottom, 0)
                .padding(.trailing, 0)

        }
    }
}


#Preview {
    ProfilePhotoInputView(user: users[0])
}
