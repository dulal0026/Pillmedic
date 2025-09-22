//
//  LoginView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 19/9/25.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var path: NavigationPath

    @State var emailAddress: String = ""
    @State var password: String = ""
    @State var isSecure: Bool = false

    var body: some View {
        VStack(alignment: .leading) {
           
            Text("Log into your account".localized)
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.manrope(.extraBold, size: 16))
                .foregroundStyle(Color.primaryText)
                .padding(.top, 12)
            
            TextField("Email (Required)".localized, text: $emailAddress)
                .padding()
                .keyboardType(.emailAddress)
                .background(Color.white)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.textBorder, lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.top, 20)
                .padding(.bottom, 12)

            PasswordField(
                password: $password,
                isSecure: $isSecure
            )
            .padding(.bottom, 14)
           
            HStack(alignment: .top) {
                Spacer()
                Button {
                    
                } label: {
                    HorizontalIconTextView()
                }
            }
            .padding(.bottom, 14)
            .padding(.horizontal, 16)

            Button {
                print("Create account")
            } label: {
                ActionButton(
                    title: "Sign in",
                    font: Font.manrope(.semiBold, size: 16)
                )
            }
            .padding(.bottom)

            
            HStack(alignment: .center, spacing: 2) {
                Text("Don’t have an account?".localized)
                    .font(.manrope(.regular, size: 14))
                    .foregroundStyle(Color.primaryText)
                
                Button {
                    print("Register")
                } label: {
                    Text("Register".localized)
                        .font(.manrope(.semiBold, size: 16))
                        .foregroundStyle(Color.appBlue)
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
    LoginView(path: .constant(NavigationPath()))
}


struct HorizontalIconTextView: View {
   
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            Image(.iconLock)
                .resizable()
                .renderingMode(.template)
                .frame(width: 12, height: 12)
                .tint(Color.appBlue)
                .foregroundStyle(Color.appBlue)
            
            Text("Forgot password?".localized)
                .font(.manrope(.medium, size: 12))
                .foregroundStyle(Color.appBlue)
        }
    }
}


struct PasswordField: View {
   
    var placeHolder: String = "Password (Required)"
    @Binding var password: String
    @Binding var isSecure: Bool

    var body: some View {
        HStack {
            if isSecure {
                SecureField(
                    placeHolder.localized,
                    text: $password
                )
            } else {
                TextField(
                    placeHolder.localized,
                    text: $password
                    )
            }

            Button {
                isSecure.toggle()
            } label: {
                Image(isSecure ? .eyeClose : .eyeOpen)
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.textBorder, lineWidth: 1)
        )
        .padding(.horizontal)
    }
}

/*
#Preview {
    PasswordField(
        placeHolder: "Password (Required)",
        password: .constant(""),
        isSecure: .constant(false)
    )
}
*/
