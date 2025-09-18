//
//  AddFamilyView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 18/9/25.
//

import SwiftUI

struct AddFamilyView: View {
    
    @State var fullName: String = ""
    @State var emailAddress: String = ""

    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .bottomTrailing) {
                Image(.familyAvatar)
                Image(.iconCamera)
                    .frame(width: 28, height: 28)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .background(.clear)

            TextField(
                "Full name (Required)".localized,
                text: $fullName
            )
                .padding()
                .background(Color.white)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.textBorder, lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom, 16)
            
            TextField("Email (Optional)".localized, text: $emailAddress)
                .padding()
                .background(Color.white)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.textBorder, lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom, 20)

            Button {
                print("Add Family")
            } label: {
                ActionButton(
                    title: "Add Family Member",
                    font: .manrope(.bold, size: 18),
                    icon: .iconAdd
                )
            }
            Spacer()
        }
        .padding(.horizontal, 16)
        .background(.clear)
    }
}

#Preview {
    AddFamilyView()
}

