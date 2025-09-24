//
//  SetScheduleView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 24/9/25.
//

import SwiftUI

struct SetScheduleView: View {
    
    @Binding var path: NavigationPath

    @State var mealNote: MealNote
    @State var notesEnabled: Bool = false

    @State var doses: [String] = ["1 Dose", "2 Dose", "3 Dose"]
    @State var notes: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            VStack(alignment: .leading, spacing: 16) {
                
                HStack(alignment: .center) {
                    Spacer()
                    VStack(alignment: .center, spacing: 16){
                        Image(.medicineSchedule)
                            .resizable()
                            .frame(width: 110, height: 110, alignment: .center)
                            .background(.clear)
                        
                        Text("Set a Schedule".localized)
                            .font(.manrope(.bold, size: 24))
                            .foregroundStyle(Color.primaryText)
                    }
                    Spacer()
                }
                .background(.clear)
                
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
                
                LazyVStack(alignment: .leading, spacing: 16) {
                    
                    ForEach(doses, id: \.self) { dose in
                        HStack(alignment: .top, spacing: 16) {
                            
                            Text("1 Dose")
                                .font(.manrope(.medium, size: 16))
                                .foregroundStyle(Color.primaryText)
                            
                            Spacer()
                            
                            HStack {
                                Text("12:00 AM")
                                    .font(.manrope(.medium, size: 16))
                                    .foregroundStyle(Color.primaryText)
                                
                                Button {
                                    doses.remove(at: 0)
                                } label: {
                                    Image(systemName: "minus.square.fill")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                        .tint(.red)
                                        .foregroundStyle(Color.red)
                                }
                            }
                        }
                    }
                }
                
                Button {
                    doses.append("5 Dose")
                } label: {
                    HStack(alignment: .center, spacing: 12) {
                        Spacer()
                        Text("Add Time".localized)
                            .font(.manrope(.medium, size: 16))
                            .foregroundStyle(Color.appBlue)
                        
                        Image(systemName: "plus.app.fill")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .tint(.red)
                            .foregroundStyle(Color.appGreen)
                    }
                }
                
                if !notesEnabled {
                    withAnimation {
                        Button {
                            notesEnabled = true
                            doses.append("5 Dose")
                        } label: {
                            HStack(alignment: .center, spacing: 12) {
                                Spacer()
                                
                                Image(systemName: "plus.app")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .tint(.red)
                                    .foregroundStyle(Color.appBlue)
                                
                                Text("Add Note".localized)
                                    .font(.manrope(.medium, size: 16))
                                    .foregroundStyle(Color.appBlue)
                                
                                Spacer()
                            }
                        }
                    }
                   
                }
                if notesEnabled {
                    withAnimation {
                        NotesView(
                            notes: $notes
                        )
                    }
                }
               
            }
            .background(Color.clear)
            .padding(.horizontal, 20)
            .padding(.top, 24)
            
            Button {
                path.append(MedicineRoute.details(medicines[0]))
            } label: {
                ActionButton(
                    title: "Add_Medicine"
                )
            }
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
    }
}

#Preview {
    SetScheduleView(
        path: .constant(NavigationPath()),
        mealNote: MealNote.notSpecific
    )
}



