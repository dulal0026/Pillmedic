//
//  Medicine.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 22/9/25.
//

import UIKit

struct Medicine: Equatable, Hashable, Identifiable {
    let id = UUID()
    
    var name: String
    var totalDays: String
    var takingInterval: String
    var mealNote: MealNote
    var doseTimes: [Date]
    var startDate: Date
    var notes: String
}

