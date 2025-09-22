//
//  ToolBarBackButton.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 22/9/25.
//

import SwiftUI

struct ToolBarBackButton: View {
    @Binding var path: NavigationPath

    var body: some View {
        Button {
            path.removeLast()
        } label: {
            HStack{
                Image(systemName: "chevron.left")
                    .tint(Color.appBlue)
                    .foregroundStyle(Color.appBlue)
                Text("Back")
                    .font(.manrope(.medium, size: 16))
                    .foregroundStyle(Color.appBlue)
            }
        }
    }
}

