//
//  MedicineCheckView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 17/9/25.
//

import SwiftUI

struct MedicineCheckList {
    var icon: ImageResource
    var title: String
}

struct MedicineCheckView: View {
    
    var checks: [MedicineCheckList] = []
    
    var body: some View {
        LazyVStack(alignment: .leading, spacing: 12) {
            
            ForEach(checks, id: \.title) { check in
                MedicineCheckItemView(
                    icon: check.icon,
                    title: check.title
                )
            }
        }
        .background(.clear)
        .padding(16)
        .scrollIndicators(.hidden)
    }
}

struct MedicineCheckItemView: View {
    
    var icon: ImageResource
    var title: String

    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Image(icon)
                .resizable()
                .frame(width: 40)
                .frame(height: 40)
            Text(title.localized)
                .foregroundStyle(Color.secondaryText)
                .font(.manrope(.semiBold, size: 14))
        }
        .background(Color.clear)
    }
}

#Preview {
    MedicineCheckItemView(icon: .medicineCheckList3, title: "our med info is encrypted & only accessible with your permission.")
}
