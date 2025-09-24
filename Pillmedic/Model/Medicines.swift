import UIKit

let medicines: [Medicine] = [
    Medicine(
        name: "Napa 1",
        totalDays: "4 days",
        takingInterval: "Every 12 hours",
        mealNote: .before,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Napa 2",
        totalDays: "7 days",
        takingInterval: "Every 8 hours",
        mealNote: .after,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Stay hydrated by sipping water throughout the day! Aim for at least eight glasses to keep your body energized and your skin glowing. Remember, hydration is key to feeling your best!"
    ),
    Medicine(
        name: "Napa 3",
        totalDays: "4 days",
        takingInterval: "Every 12 hours",
        mealNote: .notSpecific,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Aspirin 4",
        totalDays: "11 days",
        takingInterval: "Every 12 hours",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Stay hydrated by sipping water throughout the day! Aim for at least eight glasses to keep your body energized and your skin glowing. Remember, hydration is key to feeling your best!"
    ),
    Medicine(
        name: "Amoxicillin 5",
        totalDays: "4 days",
        takingInterval: "Everyday",
        mealNote: .after,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Drink more water"
    )/*,
    Medicine(
        name: "Ibuprofen 6",
        totalDays: "13 days",
        takingInterval: "Every 12 hours",
        mealNote: .after,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Cetirizine 7",
        totalDays: "8 days",
        takingInterval: "Every 8 hours",
        mealNote: .after,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Avoid alcohol"
    ),
    Medicine(
        name: "Napa 8",
        totalDays: "14 days",
        takingInterval: "Everyday",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Amoxicillin 9",
        totalDays: "13 days",
        takingInterval: "Twice a day",
        mealNote: .notSpecific,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Napa 10",
        totalDays: "7 days",
        takingInterval: "Twice a day",
        mealNote: .before,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Omeprazole 11",
        totalDays: "11 days",
        takingInterval: "Everyday",
        mealNote: .after,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Ibuprofen 12",
        totalDays: "12 days",
        takingInterval: "Twice a day",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Metformin 13",
        totalDays: "7 days",
        takingInterval: "Everyday",
        mealNote: .before,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Napa 14",
        totalDays: "7 days",
        takingInterval: "Every 8 hours",
        mealNote: .before,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Cetirizine 15",
        totalDays: "7 days",
        takingInterval: "Everyday",
        mealNote: .before,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Ibuprofen 16",
        totalDays: "5 days",
        takingInterval: "Every 8 hours",
        mealNote: .after,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Cetirizine 17",
        totalDays: "11 days",
        takingInterval: "Every 8 hours",
        mealNote: .before,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Cetirizine 18",
        totalDays: "3 days",
        takingInterval: "Every 12 hours",
        mealNote: .after,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Amoxicillin 19",
        totalDays: "13 days",
        takingInterval: "Everyday",
        mealNote: .before,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Omeprazole 20",
        totalDays: "6 days",
        takingInterval: "Twice a day",
        mealNote: .before,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Paracetamol 21",
        totalDays: "11 days",
        takingInterval: "Every 8 hours",
        mealNote: .after,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Cetirizine 22",
        totalDays: "10 days",
        takingInterval: "Twice a day",
        mealNote: .after,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Ibuprofen 23",
        totalDays: "6 days",
        takingInterval: "Twice a day",
        mealNote: .after,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Avoid alcohol"
    ),
    Medicine(
        name: "Ibuprofen 24",
        totalDays: "9 days",
        takingInterval: "Every 8 hours",
        mealNote: .notSpecific,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Amoxicillin 25",
        totalDays: "14 days",
        takingInterval: "Every 12 hours",
        mealNote: .before,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Avoid alcohol"
    ),
    Medicine(
        name: "Ibuprofen 26",
        totalDays: "5 days",
        takingInterval: "Every 8 hours",
        mealNote: .after,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Cetirizine 27",
        totalDays: "5 days",
        takingInterval: "Everyday",
        mealNote: .after,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Aspirin 28",
        totalDays: "8 days",
        takingInterval: "Twice a day",
        mealNote: .after,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Omeprazole 29",
        totalDays: "9 days",
        takingInterval: "Twice a day",
        mealNote: .after,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Omeprazole 30",
        totalDays: "3 days",
        takingInterval: "Twice a day",
        mealNote: .after,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Aspirin 31",
        totalDays: "13 days",
        takingInterval: "Everyday",
        mealNote: .before,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Aspirin 32",
        totalDays: "10 days",
        takingInterval: "Every 12 hours",
        mealNote: .before,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Paracetamol 33",
        totalDays: "12 days",
        takingInterval: "Twice a day",
        mealNote: .after,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Metformin 34",
        totalDays: "10 days",
        takingInterval: "Twice a day",
        mealNote: .after,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Metformin 35",
        totalDays: "12 days",
        takingInterval: "Every 8 hours",
        mealNote: .before,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Avoid alcohol"
    ),
    Medicine(
        name: "Metformin 36",
        totalDays: "5 days",
        takingInterval: "Twice a day",
        mealNote: .notSpecific,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Paracetamol 37",
        totalDays: "9 days",
        takingInterval: "Every 8 hours",
        mealNote: .before,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Amoxicillin 38",
        totalDays: "5 days",
        takingInterval: "Twice a day",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Omeprazole 39",
        totalDays: "8 days",
        takingInterval: "Every 12 hours",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Paracetamol 40",
        totalDays: "12 days",
        takingInterval: "Every 12 hours",
        mealNote: .before,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Avoid alcohol"
    ),
    Medicine(
        name: "Paracetamol 41",
        totalDays: "12 days",
        takingInterval: "Everyday",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Ibuprofen 42",
        totalDays: "12 days",
        takingInterval: "Everyday",
        mealNote: .after,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Napa 43",
        totalDays: "5 days",
        takingInterval: "Every 12 hours",
        mealNote: .before,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Cetirizine 44",
        totalDays: "9 days",
        takingInterval: "Twice a day",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Avoid alcohol"
    ),
    Medicine(
        name: "Aspirin 45",
        totalDays: "5 days",
        takingInterval: "Everyday",
        mealNote: .after,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Paracetamol 46",
        totalDays: "6 days",
        takingInterval: "Every 8 hours",
        mealNote: .after,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Cetirizine 47",
        totalDays: "12 days",
        takingInterval: "Twice a day",
        mealNote: .before,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Metformin 48",
        totalDays: "14 days",
        takingInterval: "Every 8 hours",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Omeprazole 49",
        totalDays: "10 days",
        takingInterval: "Everyday",
        mealNote: .after,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Aspirin 50",
        totalDays: "13 days",
        takingInterval: "Every 8 hours",
        mealNote: .notSpecific,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Metformin 51",
        totalDays: "6 days",
        takingInterval: "Every 8 hours",
        mealNote: .after,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Ibuprofen 52",
        totalDays: "7 days",
        takingInterval: "Every 12 hours",
        mealNote: .after,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Metformin 53",
        totalDays: "4 days",
        takingInterval: "Everyday",
        mealNote: .after,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Amoxicillin 54",
        totalDays: "8 days",
        takingInterval: "Every 8 hours",
        mealNote: .before,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Napa 55",
        totalDays: "8 days",
        takingInterval: "Every 12 hours",
        mealNote: .before,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Ibuprofen 56",
        totalDays: "10 days",
        takingInterval: "Every 12 hours",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Napa 57",
        totalDays: "3 days",
        takingInterval: "Every 12 hours",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Ibuprofen 58",
        totalDays: "5 days",
        takingInterval: "Every 12 hours",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Avoid alcohol"
    ),
    Medicine(
        name: "Amoxicillin 59",
        totalDays: "14 days",
        takingInterval: "Everyday",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Aspirin 60",
        totalDays: "7 days",
        takingInterval: "Everyday",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Paracetamol 61",
        totalDays: "13 days",
        takingInterval: "Every 8 hours",
        mealNote: .after,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Aspirin 62",
        totalDays: "5 days",
        takingInterval: "Every 12 hours",
        mealNote: .notSpecific,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Ibuprofen 63",
        totalDays: "6 days",
        takingInterval: "Every 8 hours",
        mealNote: .before,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Omeprazole 64",
        totalDays: "4 days",
        takingInterval: "Every 8 hours",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Aspirin 65",
        totalDays: "11 days",
        takingInterval: "Every 12 hours",
        mealNote: .after,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Cetirizine 66",
        totalDays: "5 days",
        takingInterval: "Every 8 hours",
        mealNote: .after,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Ibuprofen 67",
        totalDays: "9 days",
        takingInterval: "Twice a day",
        mealNote: .notSpecific,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Omeprazole 68",
        totalDays: "11 days",
        takingInterval: "Twice a day",
        mealNote: .before,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Cetirizine 69",
        totalDays: "13 days",
        takingInterval: "Every 12 hours",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Napa 70",
        totalDays: "7 days",
        takingInterval: "Every 12 hours",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Paracetamol 71",
        totalDays: "4 days",
        takingInterval: "Every 8 hours",
        mealNote: .after,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Amoxicillin 72",
        totalDays: "12 days",
        takingInterval: "Twice a day",
        mealNote: .before,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Avoid alcohol"
    ),
    Medicine(
        name: "Ibuprofen 73",
        totalDays: "13 days",
        takingInterval: "Every 8 hours",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Napa 74",
        totalDays: "14 days",
        takingInterval: "Everyday",
        mealNote: .before,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Aspirin 75",
        totalDays: "14 days",
        takingInterval: "Twice a day",
        mealNote: .notSpecific,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Cetirizine 76",
        totalDays: "10 days",
        takingInterval: "Every 8 hours",
        mealNote: .after,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Omeprazole 77",
        totalDays: "3 days",
        takingInterval: "Every 8 hours",
        mealNote: .after,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Ibuprofen 78",
        totalDays: "8 days",
        takingInterval: "Twice a day",
        mealNote: .before,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Metformin 79",
        totalDays: "12 days",
        takingInterval: "Every 12 hours",
        mealNote: .notSpecific,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Amoxicillin 80",
        totalDays: "12 days",
        takingInterval: "Every 8 hours",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Metformin 81",
        totalDays: "12 days",
        takingInterval: "Every 12 hours",
        mealNote: .notSpecific,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Avoid alcohol"
    ),
    Medicine(
        name: "Aspirin 82",
        totalDays: "4 days",
        takingInterval: "Every 8 hours",
        mealNote: .notSpecific,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Avoid alcohol"
    ),
    Medicine(
        name: "Omeprazole 83",
        totalDays: "8 days",
        takingInterval: "Every 8 hours",
        mealNote: .before,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Avoid alcohol"
    ),
    Medicine(
        name: "Napa 84",
        totalDays: "8 days",
        takingInterval: "Twice a day",
        mealNote: .before,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Avoid alcohol"
    ),
    Medicine(
        name: "Omeprazole 85",
        totalDays: "5 days",
        takingInterval: "Twice a day",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Omeprazole 86",
        totalDays: "6 days",
        takingInterval: "Everyday",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Omeprazole 87",
        totalDays: "11 days",
        takingInterval: "Everyday",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Avoid alcohol"
    ),
    Medicine(
        name: "Paracetamol 88",
        totalDays: "4 days",
        takingInterval: "Every 12 hours",
        mealNote: .after,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Amoxicillin 89",
        totalDays: "9 days",
        takingInterval: "Every 12 hours",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Omeprazole 90",
        totalDays: "7 days",
        takingInterval: "Everyday",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Metformin 91",
        totalDays: "4 days",
        takingInterval: "Twice a day",
        mealNote: .after,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Aspirin 92",
        totalDays: "4 days",
        takingInterval: "Everyday",
        mealNote: .notSpecific,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Cetirizine 93",
        totalDays: "14 days",
        takingInterval: "Every 12 hours",
        mealNote: .after,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Napa 94",
        totalDays: "12 days",
        takingInterval: "Everyday",
        mealNote: .notSpecific,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Aspirin 95",
        totalDays: "14 days",
        takingInterval: "Every 8 hours",
        mealNote: .after,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Take with milk"
    ),
    Medicine(
        name: "Cetirizine 96",
        totalDays: "14 days",
        takingInterval: "Every 8 hours",
        mealNote: .before,
        doseTimes: [Date(), Date(), Date()],
        startDate: Date(),
        notes: "Avoid alcohol"
    ),
    Medicine(
        name: "Metformin 97",
        totalDays: "6 days",
        takingInterval: "Every 8 hours",
        mealNote: .notSpecific,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Take rest"
    ),
    Medicine(
        name: "Aspirin 98",
        totalDays: "13 days",
        takingInterval: "Twice a day",
        mealNote: .after,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "Drink more water"
    ),
    Medicine(
        name: "Metformin 99",
        totalDays: "5 days",
        takingInterval: "Twice a day",
        mealNote: .after,
        doseTimes: [Date(), Date()],
        startDate: Date(),
        notes: "No spicy food"
    ),
    Medicine(
        name: "Paracetamol 100",
        totalDays: "7 days",
        takingInterval: "Every 12 hours",
        mealNote: .after,
        doseTimes: [Date()],
        startDate: Date(),
        notes: "Drink more water"
    )*/
]
