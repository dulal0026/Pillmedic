//
//  AccountView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 17/9/25.
//

import SwiftUI

struct AccountView: View {
    
    @State private var path = NavigationPath()
    @State var user: User
    @State private var isOn = true

    var menus: [AccountMenu] {
        AccountMenu.allCases
    }
    
    var body: some View {
        NavigationStack(path: $path) {
            ScrollView(.vertical) {
                VStack(alignment: .center) {
                    
                    ProfileTopView()
                        .onTapGesture {
                            path.append("Edit")
                        }
                    PremiumView()
                        .padding(.top, 20)

                    
                    Text("Restore Purchases")
                        .font(.manrope(.medium, size: 18))
                        .foregroundStyle(Color.primaryText)
                        .padding(.top, 20)

                    
                    LazyVStack(alignment: .leading, spacing: 20) {
                        ForEach(menus) { menu in
                            switch menu {
                            case .bloodGroup, .gender, .birthday, .email:
                                HStack(alignment: .center) {
                                    MenuItemView(menuType: menu)
                                    Spacer()
                                    MenuValueText(value: menu.value)
                                }
                            case .language:
                                HStack(alignment: .center) {
                                    MenuItemView(menuType: menu)
                                    Spacer()
                                    BorderText(
                                        property: BorderTextProperty(
                                            text: "Engish",
                                            textColor: Color.appBlue,
                                            borderColor: Color.appBlue,
                                            radius: 12,
                                            backgroundColor: .clear,
                                            font: .manrope(.medium, size: 18)
                                        )
                                    )
                                }
                            case .notification:
                                HStack(alignment: .center) {
                                    MenuItemView(menuType: menu)
                                    Spacer()
                                    Toggle(
                                        "",
                                        isOn: $isOn
                                    )
                                    .padding()
                                    .tint(Color.appBlue)
                                }
                            case .help, .privacy, .terms, .delete:
                                Button {
                                    print(menu.title)
                                } label: {
                                    HStack(alignment: .center) {
                                        MenuItemView(menuType: menu)
                                        Spacer()
                                        Image(.iconArrowRight)
                                            .resizable()
                                            .scaledToFit()
                                            .tint(Color.secondary)
                                            .frame(width: 20, height: 20)
                                    }
                                }
                            }
                        }
                    }
                    .padding(.top, 20)
                    .padding(.horizontal, 24)
                    
                    Button {
                        print("Logout")
                    } label: {
                        Text("Log out".localized)
                            .font(.manrope(.bold, size: 16))
                            .foregroundStyle(Color.red)
                    }
                    
                    Button {
                        print("Insight")
                    } label: {
                        InsightsView()
                            .padding(.horizontal, 16)
                    }
                }
                .background(.red.opacity(0))
            }
            .navigationDestination(for: String.self) { str in
                if str == "Edit" {
                    AccountEditView()
                }
            }
        }
        
        
    }
}

#Preview {
    AccountView(user: users[0])
}


struct MenuItemView: View {
    var menuType: AccountMenu

    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            MenuIcon(menuType: menuType)
            MenuText(menuType: menuType)
        }
    }
}
struct MenuIcon: View {
    
    var menuType: AccountMenu
    
    var body: some View {
        ZStack(alignment: .center) {
            RoundedRectangle(cornerRadius: 10)
                .fill(menuType.background)
                .frame(width: 48, height: 48)
           
            Image(menuType.icon)
                .resizable()
                .renderingMode(.template)
                .frame(width: 32, height: 32)
                .tint(.white)
                .foregroundStyle(.white)
        }
    }
}

struct MenuText: View {
   
    var menuType: AccountMenu

    var body: some View {
        Text(menuType.title.localized)
            .font(.manrope(.regular, size: 14))
            .foregroundStyle(Color.primaryText)
    }
}

struct MenuValueText: View {
   
    var value: String

    var body: some View {
        Text(value.localized)
            .font(.manrope(.medium, size: 14))
            .foregroundStyle(Color.secondaryText)
    }
}
/*
#Preview {
    MenuItemsView(menuType: .email)
}
*/


struct CHS: View {
    var body: some View {
        VStack {
            Text("Bottom gree")
                .foregroundColor(.black)
                .padding()
            Text("Bottom gree")
                .foregroundColor(.black)
                .padding()

        }
        .frame(width: 300, height: 300)
        .overlay(
            InsightsView()
                .foregroundColor(.green),
            alignment: .bottom
        )
        .background(Color.orange.opacity(0.3))

    }
}
