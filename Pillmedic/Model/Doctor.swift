//
//  Doctor.swift
//  Pillmedic
//
//  Created by Dulal Hossain on 18/9/25.
//

import UIKit

struct Doctor: Identifiable {
    
    var id: String {
        return mobileNumber
    }
    
    var name: String
    var mobileNumber: String
    
    var speciality: String
    var medicalCollege: String
    
    var appointmentDate: Date?
    var appointmentTime: Date?
    
    static var dummyDoctors: [Doctor] {
        return [
            Doctor(name: "Dr. Kamrul Islam", mobileNumber: "+8801710098578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Sharmin Rahman", mobileNumber: "+8801710258258", speciality: "Gykonologist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Rumana Rahman", mobileNumber: "+8801710098444", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Abid Hasan", mobileNumber: "+8801360098678", speciality: "Medicine", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Obonti Rahman", mobileNumber: "+8801710855569", speciality: "Dentist", medicalCollege: "Dhaka Dental College"),
            Doctor(name: "Dr. Farzana Rahman", mobileNumber: "+8801710058748", speciality: "Kidney Specialist", medicalCollege: "Bangladesh Medical College"),
            Doctor(name: "Dr. Nazrul Islam", mobileNumber: "+8801810098578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Shohanur Choudhuri", mobileNumber: "+8801310098578", speciality: "Skin Specialist", medicalCollege: "Evercare Medical College and Hospital"),
            Doctor(name: "Dr. Soily Rahman", mobileNumber: "+8801610098578", speciality: "Nuro Surgon", medicalCollege: "Enam Medical College and Hospital"),
            Doctor(name: "Dr. Kamrul Islam", mobileNumber: "+8801910098578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Sharmin Rahman", mobileNumber: "+8801410258258", speciality: "Gykonologist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Rumana Rahman", mobileNumber: "+8801810088578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Abid Hasan", mobileNumber: "+8801360098578", speciality: "Medicine", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Obonti Rahman", mobileNumber: "+8801718852569", speciality: "Dentist", medicalCollege: "Dhaka Dental College"),
            Doctor(name: "Dr. Farzana Rahman", mobileNumber: "+8801719098748", speciality: "Kidney Specialist", medicalCollege: "Bangladesh Medical College"),
            Doctor(name: "Dr. Nazrul Islam", mobileNumber: "+8801810018578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Shohanur Choudhuri", mobileNumber: "+8801910008578", speciality: "Skin Specialist", medicalCollege: "Evercare Medical College and Hospital"),
            Doctor(name: "Dr. Soily Rahman", mobileNumber: "+8801710098570", speciality: "Nuro Surgon", medicalCollege: "Enam Medical College and Hospital"),
            Doctor(name: "Dr. Kamrul Islam", mobileNumber: "+8801710098571", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Sharmin Rahman", mobileNumber: "+8801710258252", speciality: "Gykonologist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Rumana Rahman", mobileNumber: "+8801710098573", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Abid Hasan", mobileNumber: "+8801360098548", speciality: "Medicine", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Obonti Rahman", mobileNumber: "+8801710852169", speciality: "Dentist", medicalCollege: "Dhaka Dental College"),
            Doctor(name: "Dr. Farzana Rahman", mobileNumber: "+8801710092748", speciality: "Kidney Specialist", medicalCollege: "Bangladesh Medical College"),
            Doctor(name: "Dr. Nazrul Islam", mobileNumber: "+8801810058578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Shohanur Choudhuri", mobileNumber: "+8801920098578", speciality: "Skin Specialist", medicalCollege: "Evercare Medical College and Hospital"),
            Doctor(name: "Dr. Soily Rahman", mobileNumber: "+8801720098578", speciality: "Nuro Surgon", medicalCollege: "Enam Medical College and Hospital"),
            Doctor(name: "Dr. Kamrul Islam", mobileNumber: "+8801730098578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Sharmin Rahman", mobileNumber: "+8801510258258", speciality: "Gykonologist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Rumana Rahman", mobileNumber: "+8801715098578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Abid Hasan", mobileNumber: "+8801860098578", speciality: "Medicine", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Obonti Rahman", mobileNumber: "+8801716852569", speciality: "Dentist", medicalCollege: "Dhaka Dental College"),
            Doctor(name: "Dr. Farzana Rahman", mobileNumber: "+8801712598748", speciality: "Kidney Specialist", medicalCollege: "Bangladesh Medical College"),
            Doctor(name: "Dr. Nazrul Islam", mobileNumber: "+8801812698578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Shohanur Choudhuri", mobileNumber: "+8801920095578", speciality: "Skin Specialist", medicalCollege: "Evercare Medical College and Hospital"),
            Doctor(name: "Dr. Soily Rahman", mobileNumber: "+8801710088578", speciality: "Nuro Surgon", medicalCollege: "Enam Medical College and Hospital"),
            Doctor(name: "Dr. Kamrul Islam", mobileNumber: "+8801710078578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Sharmin Rahman", mobileNumber: "+8801715258258", speciality: "Gykonologist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Rumana Rahman", mobileNumber: "+8801710998578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Abid Hasan", mobileNumber: "+8801360028578", speciality: "Medicine", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Obonti Rahman", mobileNumber: "+8801790852569", speciality: "Dentist", medicalCollege: "Dhaka Dental College"),
            Doctor(name: "Dr. Farzana Rahman", mobileNumber: "+8801730098748", speciality: "Kidney Specialist", medicalCollege: "Bangladesh Medical College"),
            Doctor(name: "Dr. Nazrul Islam", mobileNumber: "+8801310098578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Shohanur Choudhuri", mobileNumber: "+8801916098578", speciality: "Skin Specialist", medicalCollege: "Evercare Medical College and Hospital"),
            Doctor(name: "Dr. Soily Rahman", mobileNumber: "+8801718098578", speciality: "Nuro Surgon", medicalCollege: "Enam Medical College and Hospital"),
            Doctor(name: "Dr. Kamrul Islam", mobileNumber: "+8801712598578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Sharmin Rahman", mobileNumber: "+8801716258258", speciality: "Gykonologist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Rumana Rahman", mobileNumber: "+8801755098578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Abid Hasan", mobileNumber: "+8801360008578", speciality: "Medicine", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Obonti Rahman", mobileNumber: "+8801710802569", speciality: "Dentist", medicalCollege: "Dhaka Dental College"),
            Doctor(name: "Dr. Farzana Rahman", mobileNumber: "+8801710090748", speciality: "Kidney Specialist", medicalCollege: "Bangladesh Medical College"),
            Doctor(name: "Dr. Nazrul Islam", mobileNumber: "+8801810095578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Shohanur Choudhuri", mobileNumber: "+8801910036578", speciality: "Skin Specialist", medicalCollege: "Evercare Medical College and Hospital"),
            Doctor(name: "Dr. Soily Rahman", mobileNumber: "+8801710056578", speciality: "Nuro Surgon", medicalCollege: "Enam Medical College and Hospital"),
            Doctor(name: "Dr. Kamrul Islam", mobileNumber: "+8801710095578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Sharmin Rahman", mobileNumber: "+8801715558258", speciality: "Gykonologist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Rumana Rahman", mobileNumber: "+8801710085578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Abid Hasan", mobileNumber: "+8801362898578", speciality: "Medicine", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Obonti Rahman", mobileNumber: "+8801798852569", speciality: "Dentist", medicalCollege: "Dhaka Dental College"),
            Doctor(name: "Dr. Farzana Rahman", mobileNumber: "+8801719998748", speciality: "Kidney Specialist", medicalCollege: "Bangladesh Medical College"),
            Doctor(name: "Dr. Nazrul Islam", mobileNumber: "+8801810069578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Shohanur Choudhuri", mobileNumber: "+8801918098578", speciality: "Skin Specialist", medicalCollege: "Evercare Medical College and Hospital"),
            Doctor(name: "Dr. Soily Rahman", mobileNumber: "+8801755598578", speciality: "Nuro Surgon", medicalCollege: "Enam Medical College and Hospital"),
            Doctor(name: "Dr. Kamrul Islam", mobileNumber: "+8801756998578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Sharmin Rahman", mobileNumber: "+8801745258258", speciality: "Gykonologist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Rumana Rahman", mobileNumber: "+8801717798578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Abid Hasan", mobileNumber: "+8801368898578", speciality: "Medicine", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Obonti Rahman", mobileNumber: "+8801717852569", speciality: "Dentist", medicalCollege: "Dhaka Dental College"),
            Doctor(name: "Dr. Farzana Rahman", mobileNumber: "+8801755598748", speciality: "Kidney Specialist", medicalCollege: "Bangladesh Medical College"),
            Doctor(name: "Dr. Nazrul Islam", mobileNumber: "+8801815688578", speciality: "Heart Specialist", medicalCollege: "Dhaka Medical College"),
            Doctor(name: "Dr. Shohanur Choudhuri", mobileNumber: "+8801914588578", speciality: "Skin Specialist", medicalCollege: "Evercare Medical College and Hospital"),
            Doctor(name: "Dr. Soily Rahman", mobileNumber: "+8801714498578", speciality: "Nuro Surgon", medicalCollege: "Enam Medical College and Hospital")
        ]
    }
}
