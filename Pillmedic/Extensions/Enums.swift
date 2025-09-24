//
//  Enums.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 20/9/25.
//

import SwiftUI

enum Language: String, CaseIterable, Identifiable {
   
    case english = "English"
    case bangla = "Bangla"
    
    var id: String {
        return title
    }
    var title: String {
        self.rawValue
    }
}

enum Gender: String, CaseIterable {
    case male = "Male"
    case female = "Female"
    
    var title: String {
        self.rawValue
    }
}

enum BloodGroup: String, CaseIterable {
    case aPositive = "A(+)"
    case aNegative = "A(-)"
    case bPositive = "B(+)"
    case bNegative = "B(-)"
    case abPositive = "AB(+)"
    case abNegative = "AB(-)"
    case oPositive = "O(+)"
    case oNegative = "O(-)"
    
    var title: String {
          return self.rawValue
      }
}


enum AccountMenu: String, CaseIterable, Identifiable {
    case bloodGroup = "Blood Group"
    case gender = "Gender"
    case birthday = "Birthday"
    case email = "Email"
    case language = "Language"
    case notification = "Notification"
    case help = "Help"
    case privacy = "Privacy policy"
    case terms = "Terms & conditions"
    case delete = "Delete account"
    
    var background: Color {
        switch self {
        case .bloodGroup:
            Color.bloodRed
        case .gender:
            Color.genderBlue
        case .birthday:
            Color.birthdayYellow
        case .email:
            Color.emailPurple
        case .language:
            Color.languageBlue
        case .notification:
            Color.notificationYellow
        case .help:
            Color.helpOrance
        case .privacy:
            Color.primary
        case .terms:
            Color.termsBlue
        case .delete:
            Color.deleteRed
        }
    }
    
    var icon: ImageResource {
        switch self {
        case .bloodGroup:
                .iconAccountBloodGroup
        case .gender:
                .iconAccountGender
        case .birthday:
                .iconAccountBirthday
        case .email:
                .iconAccountEmail
        case .language:
                .iconAccountLanguage
        case .notification:
                .iconAccountNotification
        case .help:
                .iconAccountHelp
        case .privacy:
                .iconAccountPrivacy
        case .terms:
                .iconAccountTerm
        case .delete:
                .iconAccountDelete
        }
    }
    
    var title: String {
        self.rawValue
    }
    
    var id: String {
        self.title
    }
    
    var value: String {
        switch self {
        case .bloodGroup:
            BloodGroup.aPositive.title
        case .gender:
            Gender.male.title
        case .birthday:
            "20 June 2002"
        case .email:
            "john@gmail.com"
        case .language:
            Language.english.title
        default:
             ""
        }
    }
}


enum MealNote: String, CaseIterable, Identifiable, Hashable {
    case before = "Before meal"
    case after = "After meal"
    case notSpecific = "Not specific"
    
    var id: String { self.rawValue }
}


enum MedicineTakenAction: String, CaseIterable, Identifiable, Hashable {
    
    var id: String {
        self.rawValue
    }

    case taken = "Taken"
    case lateTaken = "Late taken"
    case missed = "Missed"
    
    var title: String {
        rawValue
    }
    
    
    var forgroundColor: Color {
        switch self {
        case .taken:
            Color.takenForground
        case .lateTaken:
            Color.lateTakenForground
        case .missed:
            Color.missedForground
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .taken:
            Color.takenBackground
        case .lateTaken:
            Color.lateTakenBackground
        case .missed:
            Color.missedBackground
        }
    }
    
    var icon: ImageResource {
        switch self {
        case .taken:
                .iconTaken
        case .lateTaken:
                .iconLateTaken
        case .missed:
                .iconMissed
        }
    }
}


enum ActivityType: String, CaseIterable, Identifiable, Hashable {
    var id: String {
        self.rawValue
    }
    case weekly = "Weekly"
    case monthly = "Monthly"
    
    var title: String {
        rawValue
    }
}
