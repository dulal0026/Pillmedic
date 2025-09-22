//
//  FamilyMembersView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 19/9/25.
//

import SwiftUI

struct FamilyMembersView: View {
   
    @Binding var path: NavigationPath

    @State var removeEnabled: Bool = false

    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                familyTopView()
                
                LazyVStack(alignment: .leading, spacing: 10) {
                    
                    ForEach(users) { user in
                        FamilyItemView(user: user, removeEnabled: $removeEnabled)
                    }
                }

                removeAccount()

            }
            .padding(.vertical, 0)
            .padding(.horizontal, 0)
          
            Spacer()
        }
        .padding(.vertical, 16)
        .padding(.horizontal, 16)
        .navigationTitle("Family".localized)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                ToolBarBackButton(path: $path)
            }
        }
    }
    
    fileprivate func familyTopView() -> VStack<TupleView<(some View, some View)>> {
        return VStack(spacing: 20) {
            HStack(alignment: .center) {
                Image(.familyAvatar)
            }
            .frame(maxWidth: .infinity)
            Text("Family Members".localized)
                .foregroundStyle(Color.primaryText)
                .font(.manrope(.extraBold, size: 24))
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .padding(.top)
        }
    }
    fileprivate func removeAccount() -> some View {
        return VStack(alignment: .leading, spacing: 20) {
            
            Button {
                
                removeEnabled.toggle()
            } label: {
                
                HStack(alignment: .top, spacing: 12) {
                    Image(systemName: "trash")
                        .scaledToFit()
                        .tint(Color.red)
                    
                    Text("Remove Account")
                        .foregroundStyle(Color.primaryText)
                        .font(.manrope(.bold, size: 14))
                }
                .padding(.horizontal, 16)
                .padding(.top, 20)
                .background(.clear)
            }
            Button {
                print("Add another doctor")
            } label: {
                
                HStack(alignment: .top, spacing: 12) {
                    Image(.iconAdd)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 20)
                        .frame(height: 20)
                        .tint(Color.appBlue)
                    
                    Text("Add Another Account")
                        .foregroundStyle(Color.primaryText)
                        .font(.manrope(.bold, size: 14))
                }
                .padding(.horizontal, 16)
                .padding(.top, 0)
                .background(.clear)
            }
        }
        .padding(.horizontal, 16)
        .background(.clear)
    }
}

#Preview {
    FamilyMembersView(
        path: .constant(NavigationPath()),
        removeEnabled: false
    )
}

struct FamilyItemView: View {
    
    var user: User
    @Binding var removeEnabled: Bool


    var icon: ImageResource = .iconDoctorDummy

    var body: some View {
        VStack(alignment: .leading) {
                HStack(alignment: .center) {
                    if let avatar = user.avatar {
                        Image(avatar)
                            .resizable()
                            .frame(width: 56)
                            .frame(height: 56)
                    } else {
                        Image(.iconUserPlaceholder)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24)
                            .frame(height: 24)
                            .padding(16)
                            .background(Color.appBlue.opacity(0.2))
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.appBlue.opacity(0.4), lineWidth: 1)
                            )
                    }
                   
                    VStack(alignment: .leading, spacing: 4) {
                      
                        HStack(alignment: .center, spacing: 2) {
                            Text(user.name)
                                .foregroundStyle(Color.secondaryText)
                                .font(.manrope(.bold, size: 14))
                            
                            if user.accountType == .primary {
                                Text(user.accountType.rawValue)
                                    .font(.manrope(.regular, size: 12))
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 2)
                                    .background(Color.clear)
                                    .cornerRadius(6)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 6)
                                            .stroke(Color.appGreen, lineWidth: 1)
                                    )
                                    .padding(.leading, 16)
                            }
                            
                        }
                        if let emailAddress = user.emailAddress {
                            Text(emailAddress)
                                .foregroundStyle(Color.appLightText)
                                .font(.manrope(.medium, size: 12))
                        }
                        
                    }
                    Spacer()
                    if user.accountType == .primary {
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: 24)
                            .frame(height: 24)
                            .tint(Color.appGreen)
                            .foregroundStyle(Color.appGreen)
                    } else {
                        if removeEnabled {
                            Image(systemName: "trash")
                                .scaledToFit()
                                .frame(width: 24)
                                .frame(height: 24)
                                .tint(Color.red)
                                .foregroundStyle(Color.red)
                              
                        }
                    }
                }
            
            .padding(8)
            .background(.clear)
        }
        .padding(.horizontal, 16)
        .background(.clear)
    }
}




