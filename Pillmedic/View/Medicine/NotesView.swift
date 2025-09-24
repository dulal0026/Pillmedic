//
//  NotesView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 25/9/25.
//

import SwiftUI

struct NotesView: View {
    @State private var placeHolder: String = "Write something..."
    @State var title: String = "Enter your notes"
    @Binding var notes: String

    var body: some View {
        VStack(alignment: .leading) {
        
            ZStack(alignment: .topLeading) {
              
                
                TextEditor(text: $notes)
                    .padding(4)
                    .background(Color.clear)
              
                if notes.isEmpty {
                    Text("Say somethngs")
                        .foregroundColor(.gray)
                        .padding(8)
                }
                
            }
            .frame(height: 90)
            .background(Color.clear)

        }
        .padding(.vertical, 0)
        .padding(.horizontal, 0)
        .cornerRadius(12)
        .background(Color.clear)
        .overlay {
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.lightBlue, lineWidth: 1)
        }
    }
}

#Preview {
    NotesView(notes: .constant(""))
}

