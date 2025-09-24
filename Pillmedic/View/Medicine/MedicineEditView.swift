//
//  MedicineEditView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 25/9/25.
//

import SwiftUI

struct MedicineEditView: View {
    
    @Binding var path: NavigationPath
    @State var medicine: Medicine
    @State var medicineName: String = ""
    @State var mealNote: MealNote

    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .bottomTrailing) {
                Image(.medicineAvatar)
                Image(.iconCamera)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .background(.clear)

            Text("Edit Medicine".localized)
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.manrope(.bold, size: 24))
                .foregroundStyle(Color.primaryText)
            
            TextField("Enter_medicine_name".localized, text: $medicineName)
                .padding()
                .background(Color.white)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.textBorder, lineWidth: 1)
                )
                .padding(.horizontal)
                .padding(.bottom, 20)
            
            HStack(alignment: .center) {
                Text("When will you take?".localized)
                    .font(.manrope(.semiBold, size: 16))
                    .foregroundStyle(Color.primaryText)
                
                Spacer()
                
                Button {
                    
                } label: {
                 
                    Text("Everyday".localized)
                        .font(.manrope(.semiBold, size: 16))
                        .foregroundStyle(Color.appBlue)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.lightBlue, lineWidth: 1)
                        )
                }
            }
            
            HStack(alignment: .center) {
                Text("Duration".localized)
                    .font(.manrope(.semiBold, size: 16))
                    .foregroundStyle(Color.primaryText)
                
                Spacer()
                
                Button {
                    print("Day selection")
                } label: {
                    Text("7 days")
                        .font(.manrope(.semiBold, size: 16))
                        .foregroundStyle(Color.primaryText)
                }
            }
            
            MealNoteSegmentView(mealNote: $mealNote)
                .frame(maxWidth: .infinity)
                .frame(height: 40)
                .background(.clear)
                .padding(.horizontal, 0)

            Button {
            } label: {
                HStack(alignment: .center) {
                    Spacer()
                    Text("Delete Medicine".localized)
                        .font(.manrope(.medium, size: 18))
                        .foregroundStyle(Color.appRed)
                    Spacer()
                }
            }
            Spacer()
        }
        .padding(.horizontal, 16)
        .background(.clear)
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
                        
                    } label: {
                        Text("Done".localized)
                            .font(.manrope(.medium, size: 16))
                            .foregroundStyle(Color.appBlue)
                    }
                }
            }
        }

    }
}

#Preview {
    MedicineEditView(
        path: .constant(NavigationPath()),
        medicine: medicines[0],
        mealNote: MealNote.notSpecific
    )
}
