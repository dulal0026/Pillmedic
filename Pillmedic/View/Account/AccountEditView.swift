//
//  AccountEditView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 21/9/25.
//

import SwiftUI

struct AccountEditView: View {
    
    @State var isSecure: Bool = false

    @State var fullName: String = ""
    @State var emailAddress: String = ""
    @State var password: String = ""
    @State var speciality: String = ""

    var colors: [Color] = [.lightPink, .lightBlue]

    var body: some View {
        VStack {
            VStack {
                VStack(spacing: 0) {
                    GradientView(colors: colors)
                        .clipShape(
                            RoundedCorner(radius: 25, corners: [.topLeft, .topRight])
                        )
                    
                }
                .padding(.horizontal, 0)
                .background(.clear)
                .overlay(alignment: .topTrailing) {
                    HStack(alignment: .top) {
                        Image(.iconCamera)
                            .padding()
                    }
                }
                Rectangle()
                    .fill(.clear)
                    .frame(height: 60)
            }
            .overlay(alignment: .bottom) {
                ProfilePhotoInputView(user: users[0])
                
            }
            
            TextField("Full name (Required)".localized, text: $fullName)
                .padding()
                .background(Color.white)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.textBorder, lineWidth: 1)
                )
                .padding(.bottom, 20)
            
            TextField("Email (Optional)".localized, text: $emailAddress)
                .padding()
                .keyboardType(.emailAddress)
                .background(Color.white)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.textBorder, lineWidth: 1)
                )
                .padding(.bottom, 20)
            
            PasswordField(
                password: $password,
                isSecure: $isSecure
            )
            .padding(.bottom, 14)
            
            dateOfBirthView()
                .padding(.bottom, 14)

            
            specialityView()
                .padding(.bottom, 14)

            Spacer()
            
        }
        .padding(.horizontal, 16)
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
    
    
    fileprivate func dateOfBirthView() -> some View {
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
                    
                    Text("Date of Birth(dd/mm/yyyy)")
                        .font(.manrope(size: 14))
                        .foregroundStyle(Color.placeHolder)
                }
            }
            Spacer()

        }
        .padding()
        .cornerRadius(12)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.textBorder, lineWidth: 1)
        )
    }
   
    
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

}

#Preview {
    AccountEditView()
}


