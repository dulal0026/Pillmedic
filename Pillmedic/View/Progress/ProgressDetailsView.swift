//
//  ProgressDetails.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 23/9/25.
//

import SwiftUI

struct ProgressDetails: View {
    
    @Binding var path: NavigationPath

    @State var medicine: Medicine
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ProgressDetails(
        path: .constant(NavigationPath()),
        medicine: medicines[0])
}
