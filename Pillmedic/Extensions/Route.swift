//
//  Route.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 22/9/25.
//

import SwiftUI

enum MedicineRoute: Hashable {
   // case list
    case add
    case addSchedule
    case details(Medicine)
    case edit(Medicine)
}

enum ProgressRoute: Hashable {
    case details(Medicine)
}

enum DoctorRoute: Hashable {
    case list
    case add
    case details(Doctor)
}


enum FamilyRoute: Hashable {
    case list
    case add
}


enum AccountRoute: Hashable {
    case empty
    case menu
    case edit
    case terms
    case privacy
}

