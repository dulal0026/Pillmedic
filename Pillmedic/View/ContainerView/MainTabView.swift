//
//  MainTabView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 17/9/25.
//

import SwiftUI

enum Tab {
    case medicine, progress, family, doctor, account
}

struct MainTabView: View {
    @State private var selectedTab: Tab = .medicine
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            EmptyMedicineView()
                .tabItem {
                    Image(selectedTab == .medicine ? "tab_icon_medicine_selected" : "tab_icon_medicine_normal")
                    Text("Today")
                }
                .tag(Tab.medicine)
            
            DoctorDetailsView(doctor: Doctor.dummyDoctors[0])
                .tabItem {
                    Image(selectedTab == .progress ? "tab_icon_progress_selected" : "tab_icon_progress_normal")
                    Text("Progress")
                }
                .tag(Tab.progress)
            
            EmptyFamilyView()
                .tabItem {
                    Image(selectedTab == .family ? "tab_icon_family_selected" : "tab_icon_family_normal")
                    Text("Family")
                }
                .tag(Tab.family)
            
            EmptyDoctorView()
                .tabItem {
                    Image(selectedTab == .doctor ? "tab_icon_doctor_selected" : "tab_icon_doctor_normal")
                    Text("Doctor")
                }
                .tag(Tab.doctor)
            
            AccountView()
                .tabItem {
                    Image(selectedTab == .account ? "tab_icon_account_selected" : "tab_icon_account_normal")
                    Text("Account")
                }
                .tag(Tab.account)
        }
    }
}


#Preview {
    MainTabView()
}
