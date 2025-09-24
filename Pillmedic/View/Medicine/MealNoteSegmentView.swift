//
//  MealNoteSegmentView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 24/9/25.
//

import SwiftUI

struct MealNoteSegmentView: View {
    
    @Binding var mealNote: MealNote
    
    var body: some View {
        VStack(alignment: .leading) {
            LazyHStack(alignment: .top, spacing: 8) {
                
                ForEach(MealNote.allCases) { note in
                    Button {
                        mealNote = note
                    } label: {
                        Text(note.title)
                            .padding(.vertical, 8)
                            .padding(.horizontal,12)
                            .font(.manrope(.semiBold, size: 16))
                            .foregroundStyle(note == mealNote ? Color.white : Color.primaryText)
                            .background(note == mealNote ? Color.appBlue : Color.clear)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
            }
            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    MealNoteSegmentView(mealNote: .constant(MealNote.notSpecific))
}
