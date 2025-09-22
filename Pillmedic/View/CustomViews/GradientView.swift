//
//  GradientView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 21/9/25.
//

import SwiftUI

struct GradientView: View {
    
    var colors: [Color] = [.lightPink, .lightBlue]
    
    var body: some View {
        
        VStack() {
       }
        .frame(maxWidth: .infinity)
        .frame(height: 200)
        .background(
            LinearGradient(colors: colors, startPoint: .leading, endPoint: .trailing)
        )
    }
}

struct WhiteView: View {
    
    
    var body: some View {
        VStack {
            
        }
        .frame(maxWidth: .infinity)
        .frame(height: 130)
        .background(.clear)
    }
}
/*
#Preview {
    GradientView()
}
*/

struct ProfileTopView: View {
    
    var colors: [Color] = [.lightPink, .lightBlue]
    
    var body: some View {
        VStack(spacing: 0) {
            GradientView()
                .overlay(alignment: .topTrailing) {
                    VStack {
                        Spacer().frame(height:2)
                        RectIconView(
                            icon: .iconEdit,
                            forgroundColor: .primaryText,
                            backgroundColor: .white,
                            spacing: 20
                        )
                    }
                }
            WhiteView()
        }
        .overlay(alignment: .bottom) {
            ProfilePhotoView(user: users[0])
        }
    }
}

#Preview {
    ProfileTopView()
}
