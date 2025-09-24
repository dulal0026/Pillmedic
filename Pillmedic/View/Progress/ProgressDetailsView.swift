//
//  ProgressDetails.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 23/9/25.
//

import SwiftUI

struct ProgressDetailsView: View {
    @Binding var path: NavigationPath
    
    @State var activityType: ActivityType
    
    @State var medicine: Medicine

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
           
            ScrollView(.vertical) {
                MedicineCalendarView(
                    medicineData: [
                        Calendar.current.startOfDay(for: Date()): .taken,
                        Calendar.current.date(byAdding: .day, value: -1, to: Date())!: .missed,
                        Calendar.current.date(byAdding: .day, value: 1, to: Date())!: .lateTaken,
                        Calendar.current.date(byAdding: .day, value: -2, to: Date())!: .missed,
                        Calendar.current.date(byAdding: .day, value: 2, to: Date())!: .lateTaken,
                        Calendar.current.date(byAdding: .day, value: -3, to: Date())!: .missed,
                        Calendar.current.date(byAdding: .day, value: 3, to: Date())!: .lateTaken,
                        Calendar.current.date(byAdding: .day, value: -4, to: Date())!: .missed,
                        Calendar.current.date(byAdding: .day, value: 4, to: Date())!: .lateTaken,
                        Calendar.current.date(byAdding: .day, value: -5, to: Date())!: .missed,
                        Calendar.current.date(byAdding: .day, value: 5, to: Date())!: .lateTaken,
                        Calendar.current.date(byAdding: .day, value: -6, to: Date())!: .missed,
                        Calendar.current.date(byAdding: .day, value: 6, to: Date())!: .lateTaken,
                        Calendar.current.date(byAdding: .day, value: -7, to: Date())!: .missed,
                        Calendar.current.date(byAdding: .day, value: 7, to: Date())!: .lateTaken,
                    ]
                )
                .padding(.horizontal, 32)
                .padding(.bottom, 20)

                VStack(alignment: .leading, spacing: 16) {
                    VerticalInfoView(
                        info: InfoModel(
                            title: "When will you take?",
                            subTitle: "Everyday")
                    )
                    VerticalInfoView(
                        info: InfoModel(
                            title: "When",
                            subTitle: MealNote.before.rawValue)
                    )
                    VerticalInfoView(
                        info: InfoModel(
                            title: "Duration",
                            subTitle: "7 days")
                    )
                    VerticalInfoView(
                        info: InfoModel(
                            title: "1 Dose",
                            subTitle: "12:00 AM")
                    )
                    VerticalInfoView(
                        info: InfoModel(
                            title: "1 Dose",
                            subTitle: "12:30 AM")
                    )
                    
                    Text(medicine.notes)
                        .font(.manrope(.regular, size: 14))
                        .foregroundStyle(Color.appLightText)
                   
                }
                .padding(.horizontal, 32)
                .padding(.bottom, 20)

                VStack(alignment: .leading, spacing: 16) {
                    
                    ActivityTitleView()
                    ActivitySegmentView(activityType: $activityType)
                    MedActionDataView(activity: activityType)
                
                    Button {
                        print("Insight")
                    } label: {
                        InsightsView()
                    }
                }
                .padding(.horizontal, 32)
                .frame(maxWidth: .infinity)
                .background(Color.clear)
                
            }
            Spacer()
        }
        .navigationTitle(medicine.name)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                ToolBarBackButton(path: $path)
            }
        }

    }
}


#Preview {
    ProgressDetailsView(
        path: .constant(NavigationPath()),
        activityType: .monthly,
        medicine: medicines[0])
}


struct VerticalInfoView: View {
    
    @State var info: Info

    var body: some View {
        HStack(alignment: .center) {
            Text(info.title.localized)
                .font(.manrope(.semiBold, size: 16))
                .foregroundStyle(Color.primaryText)
            Spacer()
            
            Text(info.subTitle.localized)
                .font(.manrope(.medium, size: 16))
                .foregroundStyle(Color.primaryText)
        }
        .padding(.horizontal, 0)
    }
}


protocol Info {
    var title: String { set  get }
    var subTitle: String { set get }
}

struct InfoModel: Info {
    var title: String
    var subTitle: String
}
