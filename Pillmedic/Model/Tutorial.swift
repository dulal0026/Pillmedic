//
//  Tutorial.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 18/9/25.
//

import SwiftUI

struct Tutorial: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let imageName: String
}

let tutorialPages = [
    Tutorial(title: "tutorial_title_1", description: "tutorial_destription_1", imageName: "icon_tutorial_1"),
    Tutorial(title: "tutorial_title_2", description: "tutorial_destription_2", imageName: "icon_tutorial_2"),
]
