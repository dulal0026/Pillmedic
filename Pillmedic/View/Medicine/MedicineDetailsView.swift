//
//  MedicineDetailsView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 24/9/25.
//

import SwiftUI

struct MedicineDetailsView: View {
    @Binding var path: NavigationPath

    @State var medicine: Medicine
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 20) {
                VerticalInfoView(
                    info: InfoModel(
                        title: "When will you take?",
                        subTitle: "Everyday")
                )
                VerticalInfoView(
                    info: InfoModel(
                        title: "When",
                        subTitle: MealNote.before.rawValue)
                )
                VerticalInfoView(
                    info: InfoModel(
                        title: "Duration",
                        subTitle: "7 days")
                )
                VerticalInfoView(
                    info: InfoModel(
                        title: "1 Dose",
                        subTitle: "12:00 AM")
                )
                VerticalInfoView(
                    info: InfoModel(
                        title: "1 Dose",
                        subTitle: "12:30 AM")
                )
                
                Text(medicine.notes)
                    .font(.manrope(.regular, size: 14))
                    .foregroundStyle(Color.appLightText)
                
                HStack(alignment: .center, spacing: 16) {
                    
                    Button {
                        
                    } label: {
                        Text("Skip".localized)
                            .frame(maxWidth: .infinity)
                            .font(.manrope(.medium, size: 16))
                            .foregroundStyle(Color.gray)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 12)
                            .overlay(alignment: .center) {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.gray,lineWidth: 1)
                            }
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Not Taken".localized)
                            .frame(maxWidth: .infinity)
                            .font(.manrope(.medium, size: 16))
                            .foregroundStyle(Color.appBlue)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 12)
                            .overlay(alignment: .center) {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.appBlue,lineWidth: 1)
                            }
                    }
                }
               
            }
            .padding(.horizontal, 32)
            .padding(.bottom, 20)
            
            Spacer()
        }
        //.navigationTitle("Add_Medicine".localized)
        //.navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                ToolBarBackButton(path: $path)
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                HStack(alignment: .center, spacing: 8) {
                    Button {
                        path.append(MedicineRoute.edit(medicine))
                    } label: {
                        Text("Edit".localized)
                            .font(.manrope(.medium, size: 16))
                            .foregroundStyle(Color.appBlue)
                        
                        Image(.edit)
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 16, height: 16)
                            .foregroundStyle(Color.appBlue)
                    }
                }
            }
        }
    }
}

#Preview {
    MedicineDetailsView(
        path: .constant(NavigationPath()),
        medicine: medicines[0],
    )
}

