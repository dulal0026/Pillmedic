//
//  Users.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 19/9/25.
//

import SwiftUI

struct User: Identifiable {
    
    let id = UUID()
    let name: String
    let emailAddress: String?
    let avatar: String?
    let accountType: AccountType
    
    init(
        name: String,
        emailAddress: String? = nil,
        avatar: String? = nil,
        accountType: AccountType = .secondary
    ) {
        self.name = name
        self.emailAddress = emailAddress
        self.avatar = avatar
        self.accountType = accountType
    }
}

enum AccountType: String {
    case primary = "Primary"
    case secondary = "Secondary"
}

let users = [
    User(
        name: "Fakrul Islam",
        emailAddress: "firajibgd@gmail.com",
        avatar: "icon_doctor_dummy",
        accountType: AccountType.primary
    ),
    User(
        name: "Ayesha Rahman",
        emailAddress: "ayesha@gmail.com",
    ),
    User(
        name: "Rashid Khan",
        emailAddress: "rashid@gmail.com",
        avatar: "icon_doctor_dummy",
    ),
    User(
        name: "Saiful Islam",
    ),
    User(
        name: "Mymuna Khan",
        emailAddress: "firajibgd@gmail.com",
    )
]
