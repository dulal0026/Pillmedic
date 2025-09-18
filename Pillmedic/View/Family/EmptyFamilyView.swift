//
//  EmptyFamilyView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 17/9/25.
//

import SwiftUI

struct EmptyFamilyView: View {
    
    var checkList: [String] = [
        "benefit_family_1",
        "benefit_family_2",
        "benefit_family_3",
        "benefit_family_4",
        "benefit_family_5",
        "benefit_family_6"
    ]

    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .center, spacing: 20) {
              
                EmptyTopDataView(
                    icon: .familyAvatar,
                    title: "Benefits_of_add_family"
                )
          
                CheckListView(checks: checkList)
                
                Button {
                    print("Add Family Member")
                } label: {
                    ActionButton(
                        title: "Add Family Member",
                        font: .manrope(.bold, size: 15),
                        icon: .iconAdd
                    )
                }
                
                Button {
                    print("Add Premium")
                } label: {
                    PremiumView()
                }
                Spacer()
            }
            .background(.white)
            .padding(16)
        }
        .background(.clear)
        .padding(16)
    }
}

#Preview {
    EmptyFamilyView()
}

struct EmptyTopDataView: View {
    
    var icon: ImageResource
    var title: String
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Image(icon)
                    .resizable()
                    .frame(width: 150)
                    .frame(height: 150)
            }
            .frame(maxWidth: .infinity)
            Text(title.localized)
                .foregroundStyle(Color.primaryText)
                .font(.manrope(.extraBold, size: 24))
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
        }
    }
}

struct CheckListView: View {
    
    var checks: [String] = []
    
    var body: some View {
        LazyVStack(alignment: .leading, spacing: 12) {
            
            ForEach(checks, id: \.self) { check in
                CheckListItemView(check: check)
            }
        }
        .background(.clear)
        .padding(16)
        .scrollIndicators(.hidden)
    }
}

struct CheckListItemView: View {
    
    var check: String
    
    var body: some View {
        HStack(alignment: .center) {
            Image(.iconCheckmark)
                .resizable()
                .frame(width: 24)
                .frame(height: 24)
            Text(check.localized)
                .foregroundStyle(Color.secondaryText)
                .font(.manrope(.semiBold, size: 14))
        }
    }
}
