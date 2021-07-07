//
//  Internship.swift
//  interneed-swiftui
//
//  Created by cleanmac on 07/07/21.
//

import Foundation

struct Internship: Identifiable {
    var id = UUID()
    var title: String
    var duration: String
    var applicants: Int
    var requirements: [String]
    var benefits: [String]
    var company: Company
}

extension Internship {
    static func getAll() -> [Internship] {
        [
            Internship(title: "UX Designer Intern", duration: "6 months", applicants: 21, requirements: [
                "Proven to ever work as a UI/UX Designer or similar role.",
                "Understanding about Visual design and UX Design and Have a strong design taste.",
                "Up-to-date knowledge of design software like Adobe Illustrator and Photoshop."
            ], benefits: [
                "$200 Monthly Allowance and bonus",
                "Professional mentors"
            ], company: Company.getNetflix()),
            Internship(title: "UI Designer Intern", duration: "3 months", applicants: 34, requirements: [
                "Proven to ever work as a UI/UX Designer or similar role.",
                "Understanding about Visual design and UX Design and Have a strong design taste.",
                "Up-to-date knowledge of design software like Adobe Illustrator and Photoshop."
            ], benefits: [
                "$200 Monthly Allowance and bonus",
                "Professional mentors"
            ], company: Company.getGojek()),
            Internship(title: "Customer Service Intern", duration: "9 months", applicants: 9, requirements: [
                "Perform outbound calls to contact customers (list provided) in order to retain an existing customer.",
                "Build positive working relationships with customers for repeat businesses."
            ], benefits: [
                "Provide excellent customer service and ensure customer satisfaction.",
                "Build positive working relationships with customers for repeat businesses."
            ], company: Company.getZalora()),
            Internship(title: "Software Developer Intern", duration: "5 months", applicants: 67, requirements: [
                "Must be currently enrolled in university.",
                "Knowledge of OOP and software design patterns",
                "Experience in HTML5, CSS3",
                "Experience in Javascript or Python is a plus"
            ], benefits: [
                "Creates and maintains technical and user documentations",
                "Works with content and design team to create intuitive and attractive applications"
            ], company: Company.getSlack()),
        ]
    }

}
