//
//  MedicineCalendarView.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 23/9/25.
//

import SwiftUI

struct MedicineCalendarView: View {
   
    @State private var currentMonth: Date = Date()
    
    let calendar = Calendar.current
    
    // Example medicine status data (in real app: fetch from DB)
    var medicineData: [Date: MedicineStatus] = [:]
    
    var body: some View {
        VStack {
            // Month Header
            HStack {
                Button(action: { changeMonth(by: -1) }) {
                    Image(systemName: "chevron.left")
                }
                Spacer()
                Text(monthYearString(from: currentMonth))
                    .font(.headline)
                Spacer()
                Button(action: { changeMonth(by: 1) }) {
                    Image(systemName: "chevron.right")
                }
            }
            .padding()
            
            // Days of week
            let days = ["Sun","Mon","Tue","Wed","Thu","Fri","Sat"]
            HStack {
                ForEach(days, id: \.self) { d in
                    Text(d).frame(maxWidth: .infinity)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            
            // Grid of days
            let daysInMonth = currentMonth.daysInMonth(using: calendar)
            let firstWeekday = calendar.component(.weekday, from: daysInMonth.first!)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 7)) {
                // Empty cells for offset
                ForEach(0..<(firstWeekday-1), id: \.self) { _ in
                    Color.clear.frame(height: 40)
                }
                
                // Day cells
                
                ForEach(daysInMonth, id: \.self) { date in
                    let status = medicineData[date] ?? .missed
                    Text("\(calendar.component(.day, from: date))")
                        .frame(maxWidth: .infinity, minHeight: 40)
                        .background(
                            status.color
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .overlay(alignment: .topTrailing) {
                            Circle()
                                .fill(status.fillColor)
                                .frame(width: 10, height: 10, alignment: .topTrailing)
                        }
                }
            }
        }
    }
    
    private func monthYearString(from date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "LLLL yyyy"
        return formatter.string(from: date)
    }
    
    private func changeMonth(by value: Int) {
        if let newDate = calendar.date(byAdding: .month, value: value, to: currentMonth) {
            currentMonth = newDate
        }
    }
}


#Preview {
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
}


enum MedicineStatus: String {
    case taken
    case missed
    case lateTaken
    
    var color: Color {
        switch self {
        case .taken: return Color.takenBackground
        case .missed: return Color.missedBackground
        case .lateTaken: return Color.lateTakenBackground
        }
    }
    
    var fillColor: Color {
        switch self {
        case .taken: return Color.takenForground
        case .missed: return Color.missedForground
        case .lateTaken: return Color.lateTakenForground
        }
    }
}

