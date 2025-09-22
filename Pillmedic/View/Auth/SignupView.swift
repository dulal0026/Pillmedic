//
//  SignupView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 19/9/25.
//

import SwiftUI

struct SignupView: View {
    
    @Binding var path: NavigationPath

    @State var isSecure: Bool = false

    @State var fullName: String = ""
    @State var emailAddress: String = ""
    @State var password: String = ""

    var body: some View {
        VStack(alignment: .leading) {
           
            Text("Sign up".localized)
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.manrope(.extraBold, size: 16))
                .foregroundStyle(Color.primaryText)
                .padding(.top, 12)
            
            TextField("Full name (Required)".localized, text: $fullName)
                .padding()
                .background(Color.white)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.textBorder, lineWidth: 1)
                )
                .padding(.horizontal)
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
                .padding(.horizontal)
                .padding(.bottom, 20)
            
            PasswordField(
                password: $password,
                isSecure: $isSecure
            )
            .padding(.bottom, 14)
            
            Button {
                print("Create account")
            } label: {
                ActionButton(
                    title: "Create account",
                    font: Font.manrope(.semiBold, size: 16)
                )
            }
            .padding(.bottom)
            
            VStack {
                Text("Terms_Policy_Note".localized)
                    .font(.manrope(.regular, size: 14))
                    .foregroundStyle(Color.primaryText)
                HStack {
                    Button {
                        print("Terms")
                    } label: {
                        Text("Terms".localized)
                            .font(.manrope(.semiBold, size: 16))
                            .foregroundStyle(Color.appBlue)
                    }
                    
                    Text("and".localized)
                        .font(.manrope(.regular, size: 14))
                        .foregroundStyle(Color.primaryText)
                    
                    Button {
                        print("Policy")
                    } label: {
                        Text("Policy".localized)
                            .font(.manrope(.semiBold, size: 16))
                            .foregroundStyle(Color.appBlue)
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .center)
            
            Spacer()
        }
        .padding(.top, 24)
        .padding(.horizontal, 16)
    }
}

#Preview {
    SignupView(path: .constant(NavigationPath()))
}
