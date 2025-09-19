//
//  TutorialView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 18/9/25.
//

import SwiftUI

struct TutorialView: View {
    
    @State private var currentPage = 0
   // @AppStorage("hasSeenTutorial") var hasSeenTutorial: Bool = false
    @Binding var showTutorial: Bool

    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                ForEach(Array(tutorialPages.enumerated()), id: \.offset) { index, page in
                    VStack(spacing: 20) {
                        Image(page.imageName)
                            .resizable()
                            .scaledToFit()
                            .padding()
                        
                        Text(page.title.localized)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                            .font(.manrope(.extraBold, size: 24))
                            .foregroundStyle(Color.primaryText)
                        
                        Text(page.description.localized)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                            .font(.manrope(.regular, size: 16))
                            .foregroundStyle(Color.secondaryText)
                    }
                    .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

            Spacer()
            
            Button {
                
                if currentPage < tutorialPages.count - 1 {
                    withAnimation {
                        currentPage += 1
                    }
                } else {
                   // hasSeenTutorial = true
                    showTutorial = false
                }
                
            } label: {
                Text("Next".localized)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(12)
                    .padding(.horizontal, 40)
            }
        }
        
        PageIndicator(
            count: tutorialPages.count,
            currentIndex: currentPage
        )
        .padding(.vertical, 16)
    }
}

#Preview {
    TutorialView(showTutorial: .constant(false))
}

struct PageIndicator: View {
    let count: Int
    var currentIndex: Int
    
    var body: some View {
        HStack(alignment: .center, spacing: 2) {
            ForEach(0..<count, id: \.self) { index in
                Rectangle()
                    .fill(index == currentIndex ? Color.appBlue : Color.indicatorNormal)
                    .frame(width: index == currentIndex ? 24 : 8)
                    .frame(height: 8)
                    .cornerRadius(4)
            }
        }
    }
}
