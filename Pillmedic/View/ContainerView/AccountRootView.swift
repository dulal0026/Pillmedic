//
//  AccountRootView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 22/9/25.
//

import SwiftUI

struct AccountRootView: View {
   
    @State private var path = NavigationPath()

    var hasAccount: Bool {
       false
   }
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                if hasAccount {
                    FamilyMembersView(path: $path)
                } else {
                    EmptyFamilyView(path: $path)
                }
            }
            .navigationTitle("Family".localized)
            .navigationDestination(for: FamilyRoute.self) { dRoute in
                switch dRoute {
                case .add:
                    AddFamilyView(path: $path)
                case .list:
                    FamilyMembersView(path: $path)
                }
            }
        }
    }
}

#Preview {
    AccountRootView()
}
